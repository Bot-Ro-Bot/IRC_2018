/////////////////////////////////////////////////////////////////////IRC_2018_MANUAL_BOT_WITH_IBUS_PROTOCOL(STM-32)/////////////////////////////////////////////////////////////////////////////

/*
 * This code is in public domain. Any changes or improvements is highly welcomed.
 * author: deadpool 2018/12/20
*/


#include "ibus.h"
#include"Motor.h"
#include"Gripper.h"
#include"config.h"
#include<Servo.h>

Servo wrist, grip , shoot, tilt;

#define RED_HIGH    (GPIOB_BASE->BSRR |= (1 << 1))
#define RED_LOW     (GPIOB_BASE->BSRR |= (1 << 17))

#define GREEN_HIGH  (GPIOA_BASE->BSRR |= (1 << 4))
#define GREEN_LOW   (GPIOA_BASE->BSRR |= (1 << 20))

#define BLUE_HIGH   (GPIOB_BASE->BSRR |= (1 << 0))
#define BLUE_LOW    (GPIOB_BASE->BSRR |= (1 << 16))

#define BUZZER_ON   (GPIOB_BASE->BSRR |= (1 << 10 ))
#define BUZZER_OFF  (GPIOB_BASE->BSRR |= (1 << 26))


const bool WALK_MODE = true;
bool SHOOT_MODE, GRIP_MODE;
uint16_t channel[10];

bool flagWalk = true, flagShoot = true, flagGrip = true;

Motor *leftMotor, *rightMotor;
Motor *upMotor;

static float ANGLE_GRIP = 0, ANGLE_TILT = 0, ANGLE_SHOOT = 0;

void setup() {
  afio_cfg_debug_ports(AFIO_DEBUG_NONE);
  disableDebugPorts();
  Serial.begin(115200);
  IBus.begin(Serial2);
  pinMode(RED, OUTPUT);
  pinMode(BLUE, OUTPUT);
  pinMode(GREEN, OUTPUT);
  pinMode(BUZZER, OUTPUT);
  wrist.attach(PA0);
  grip.attach(PA1);
  tilt.attach(PA2);
  shoot.attach(PA3);
  Initialize();
}


void loop() {

  readData();
  modeSelect();
  execute();
  //  readAngle();
  // printCheck();

}

void readData() {
  IBus.loop();
  for (int i = 0; i < 10; i++) {
    channel[i] = IBus.readChannel(i);
  }
}


void printCheck() {
  Serial.print(channel[0]);
  Serial.print(" - ");
  Serial.print(channel[1]);
  Serial.print(" - ");
  Serial.print(channel[2]);
  Serial.print(" - ");
  Serial.print(channel[3]);
  Serial.print(" - ");
  Serial.print(channel[4]);
  Serial.print(" - ");
  Serial.print(channel[5]);
  Serial.print(" - ");
  Serial.print(channel[6]);
  Serial.print(" - ");
  Serial.print(channel[7]);
  Serial.print(" - ");
  Serial.print(channel[8]);
  Serial.print(" - ");
  Serial.println(channel[9]);
}

void mixer() {
  int16_t channel1 = map(channel[1], 1000, 2000, -255, 255);
  int16_t channel0 = map(channel[0], 1000, 2000, -255, 255);

  int16_t left = channel1 + channel0;
  int16_t right = channel1 - channel0;

  left  = constrain(left, -255, 255);
  right = constrain(right, -255, 255);

  leftMotor->Mixer(left);
  rightMotor->Mixer(right);

  //Serial.print("left :::  "); Serial.print(left); Serial.print("  right ::: "); Serial.println(right);
}

void modeSelect() {

  if (channel[5] == 1000) {
    GRIP_MODE = false;
    SHOOT_MODE = false;
    BLUE_HIGH;
    RED_LOW;
    GREEN_LOW;
    if (flagWalk) {
      BUZZER_ON;
      delay(50);
      BUZZER_OFF;
      flagWalk = false;
      flagShoot = true;
      flagGrip = true;
    }
  }

  if (channel[5] == 1500) {
    GRIP_MODE = true;
    SHOOT_MODE = false;
    GREEN_HIGH;
    RED_LOW;
    BLUE_LOW;
    if (flagGrip) {
      flagWalk = true;
      flagShoot = true;
      flagGrip = false;
      BUZZER_ON;
      delay(50);
      BUZZER_OFF;
      delay(50);
      BUZZER_ON;
      delay(50);
      BUZZER_OFF;
    }
  }

  if (channel[5] == 2000) {
    GRIP_MODE = false;
    SHOOT_MODE = true;
    RED_HIGH;
    BLUE_LOW;
    GREEN_LOW;
    if (flagShoot) {
      flagWalk = true;
      flagShoot = false;
      flagGrip = true;
      BUZZER_ON;
      delay(50);
      BUZZER_OFF;
      delay(50);
      BUZZER_ON;
      delay(50);
      BUZZER_OFF;
      delay(50);
      BUZZER_ON;
      delay(50);
      BUZZER_OFF;
    }

  }

}


void execute() {
  if (WALK_MODE) {
    mixer();
  }

  if (GRIP_MODE) {
    Wrist();
    Grip();

    if (channel[2] > 1500) {
      upMotor->forward(GRIPPER_SPEED);
    }
    else if (channel[2] < 1500) {
      upMotor->back(GRIPPER_SPEED);
    }
    else {
      upMotor->STOP();
    }
  }

  if (SHOOT_MODE) {
    bool SHOOT_FLAG = 0;
    if (channel[7] == 1000) {
      SHOOT_FLAG = true;
    } else if (channel[7] == 2000) {
      SHOOT_FLAG = false;
    }
    Shoot(SHOOT_FLAG);
    Tilt();
  }

}

void Initialize() {
  leftMotor  = new Motor(lMotorEnable, lMotorForward, lMotorBack);
  rightMotor = new Motor(rMotorEnable, rMotorForward, rMotorBack);
  upMotor    = new Motor(upMotorEnable, upMotorForward, upMotorBack);
  //  gripServo  = new Gripper(gripPin, GRIP);
  //  wristServo = new Gripper(wristPin, WRIST);
  //  tiltServo  = new Gripper(tiltPin, TILT);
  //  shootServo = new Gripper(shootPin , SHOOT);
}

void Wrist() {
  if (channel[4] == 1000) {
    wrist.write(0);
  }
  if (channel[4] == 2000) {
    wrist.write(90);
  }
}

void Grip() {
  if (channel[8] > 1500 && ANGLE_GRIP <= 180) {
    ANGLE_GRIP += 0.001;
  }
  else if (channel[8] < 1500 && ANGLE_GRIP >= 0 ) {
    ANGLE_GRIP -= 0.001;
  }

  grip.write(ANGLE_GRIP);
}


void Tilt() {
  if (channel[8] > 1500 && ANGLE_TILT <= 180) {
    ANGLE_TILT += 0.0002;
  }
  else if (channel[8] < 1500 && ANGLE_TILT >= 0 ) {
    ANGLE_TILT -= 0.0002;
  }
  tilt.write(ANGLE_TILT);
}

void Shoot(bool SHOOT_FLAG) {
  if (SHOOT_FLAG) {
    if (channel[9] > 1500 && ANGLE_SHOOT <= 33) {
      ANGLE_SHOOT += 0.001;
    }
    else if (channel[9] < 1500 && ANGLE_SHOOT >= 0 ) {
      ANGLE_SHOOT -= 0.01;
    }
    shoot.write(ANGLE_SHOOT);
    // Serial.println(shoot.read());
  }

  else {
    shoot.write(10);
  }
}
