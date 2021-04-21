/**
 * Author Teemu Mäntykallio
 *
 * Plot TMC2130 or TMC2660 motor load using the stallGuard value.
 * You can finetune the reading by changing the STALL_VALUE.
 * This will let you control at which load the value will read 0
 * and the stall flag will be triggered. This will also set pin DIAG1 high.
 * A higher STALL_VALUE will make the reading less sensitive and
 * a lower STALL_VALUE will make it more sensitive.
 *
 * You can control the rotation speed with
 * 0 Stop
 * 1 Resume
 * + Speed up
 * - Slow down
 */
#include <TMCStepper.h>
#include <AccelStepper.h>

#define STALL_VALUE      0 // [-64..63]

#define EN_PIN           7  // Enable
#define DIR_PIN          3  // Direction
#define STEP_PIN         2  // Step
#define CS_PIN           10 // Chip select

#define R_SENSE 0.11f 

bool checkstall;

// Select your stepper driver type
TMC2130Stepper driver(CS_PIN, R_SENSE);// Hardware SPI

using namespace TMC2130_n;

//Initiate accelstepper
AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);

//Timer Function
ISR(TIMER1_COMPA_vect){
  //STEP_PORT ^= 1 << STEP_BIT_POS;
  digitalWrite(STEP_PIN, !digitalRead(S TEP_PIN));
}

void setup() {
  SPI.begin();
  Serial.begin(250000);
  while(!Serial);
  driver.begin();//  SPI: Init CS pins and possible SW SPI pins

  pinMode(EN_PIN, OUTPUT);
  pinMode(STEP_PIN, OUTPUT);
  pinMode(CS_PIN, OUTPUT);
  pinMode(DIR_PIN, OUTPUT);

  checkstall = true;

 
  driver.toff(4);
  driver.blank_time(24);
  driver.rms_current(600); // mA
  driver.microsteps(4);
  driver.TCOOLTHRS(0xFFFFF); // 20bit max
  driver.THIGH(0);
  driver.semin(5);
  driver.semax(2);
  driver.sedn(0b01);
  driver.sgt(STALL_VALUE);

  //Test connection
  test_connect();

  // Set stepper interrupt
  set_interrupt();
}

void loop() {
  if(checkstall== true){
    stallGuardRun();
  }else{
    stealthRun();
  }

}

void stallGuardRun(){
  static uint32_t last_time=0;
  uint32_t ms = millis();

  DRV_STATUS_t drv_status{0};
  drv_status.sr = driver.DRV_STATUS();

  if((ms-last_time) > 100) { //run every 0.1s
      last_time = ms;
    if(drv_status.sg_result < 10) { 
      driver.toff(0);
      TIMSK1 &= ~(1 << OCIE1A); //Disable Interrupts
      delay(2000);
      Serial.print("Motor Stopped ");
      checkstall = false;  
      //Start stealth mode
      stealthInit();
    }else{
      Serial.println(drv_status.sg_result, DEC);
    }
  }
}

void stealthInit(){

  driver.toff(4);
  driver.rms_current(400); // mA
  driver.microsteps(16);
  driver.en_pwm_mode(true);
  driver.pwm_autoscale(true);

  Serial.println("Waiting for commands");
}

void stealthRun(){
  if(Serial.available() > 0) {
    int stepper_pos = (Serial.readString().toInt());
    //Accelstepper commands
    stepper.setMaxSpeed(1000); 
    stepper.setAcceleration(800);
    stepper.moveTo(stepper_pos);
  }

  stepper.run();
}


void set_interrupt(){
    cli();//stop interrupts
    TCCR1A = 0;// set entire TCCR1A register to 0
    TCCR1B = 0;// same for TCCR1B
    TCNT1  = 0;//initialize counter value to 0
    OCR1A = 300;// = (16*10^6) / (1*1024) - 1 (must be <65536)
    // turn on CTC mode
    TCCR1B |= (1 << WGM12);
    // Set CS11 bits for 8 prescaler
    TCCR1B |= (1 << CS11);// | (1 << CS10);
    // enable timer compare interrupt
    TIMSK1 |= (1 << OCIE1A);
    sei();//allow interrupts
}

void test_connect(){
  
  Serial.print("Testing connection...");
  uint8_t result = driver.test_connection();
  
  if (result) {
    Serial.println("failed!");
    Serial.print("Likely cause: ");

    switch(result) {
        case 1: Serial.println("loose connection"); break;
        case 2: Serial.println("no power"); break;
    }

    Serial.println("Fix the problem and reset board.");

    // We need this delay or messages above don't get fully printed out
    delay(100);
    abort();
  }

  Serial.println("OK");

  //Then turn on motor
  digitalWrite(EN_PIN, LOW);

  IOIN_t ioin{driver.IOIN()};

  if (ioin.version == 0xFF || ioin.version == 0) {
    Serial.println("Driver communication error");
    while(true);
  }

  Serial.print("Driver firmware version: ");
  Serial.println(ioin.version);
}
