/////////////////////////////////////////////////////////////////////IRC_2018_MANUAL_BOT_WITH_IBUS_PROTOCOL(STM-32)/////////////////////////////////////////////////////////////////////////////

//Channel 1   Roll
//Channel 2   Pitch
//Channel 3   Throttle
//Channel 4   Yaw
//Channel 5   Switch A
//Channel 6   Swicth B
//Channel 7   VarA
//Channel 8   VarB
//Channel 9   Switch C
//Channel 10  Switch D

#include "ibus.h"
#include"Motor.h"
#include"Gripper.h"
#include"Shooter.h"
#include"config.h"


bool WALK_MODE, SHOOT_MODE, GRIP_MODE;

uint16_t channel[10];           //Variable for storing values for all the 10 channels

Motor leftMotor(lMotorEnable, lMotorForward, lMotorBack), rightMotor(rMotorEnable, rMotorForward, rMotorBack);

Gripper baseServo(basePin, BASE), armServo(armPin, ARM), wristServo(wristPin, WRIST), gripServo(gripPin, GRIP);

Shooter shootServo(shootMotor, SHOOT), tiltServo(tiltMotor, TILT);

void setup() {
  Serial.begin(115200);
  IBus.begin(Serial1);

  pinMode(RED, OUTPUT);
  pinMode(BLUE, OUTPUT);
  pinMode(GREEN, OUTPUT);

  digitalWrite(RED, LOW);
  digitalWrite(BLUE, LOW);
  digitalWrite(GREEN, LOW);

}

void loop() {
  readData();
  //printCheck();
  modeSelect();
  mixer();

  // baseServo.Move(channel[3], BASE);
  // armServo.Move(channel[2], ARM);
  // wristServo.Move(channel[8], WRIST);
  // gripServo.Move(channel[9], GRIP);

  baseServo.MOVE(channel[8]);
  armServo.MOVE(channel[9]);
  wristServo.MOVE(channel[2]);
  gripServo.MOVE(channel[3]);

}

void readData() {
  IBus.loop();
  for (int i = 0; i < 10; i++) {
    channel[i] = IBus.readChannel(i);
  }
}


void printCheck() {                    //To show data read from the serial buffer in the serial monitor
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

  left = constrain(left, -255, 255);
  right = constrain(right, -255, 255);
  leftMotor.Mixer(left);
  rightMotor.Mixer(right);
  //Serial.print("left :::  "); Serial.print(left); Serial.print("  right ::: "); Serial.println(right);
}

void modeSelect() {
  if (channel[5] == 1000) {
    WALK_MODE = true;
    GRIP_MODE = false;
    SHOOT_MODE = false;
    digitalWrite(BLUE, LOW);
    digitalWrite(RED, HIGH);
    digitalWrite(GREEN, LOW);
  }
  if (channel[5] == 1500) {
    WALK_MODE = true;
    GRIP_MODE = true;
    SHOOT_MODE = false;
    digitalWrite(BLUE, LOW);
    digitalWrite(RED, LOW);
    digitalWrite(GREEN, HIGH);
  }
  if (channel[5] == 2000) {
    WALK_MODE = true;
    SHOOT_MODE = true;
    GRIP_MODE = false;

    digitalWrite(BLUE, HIGH);
    digitalWrite(RED, LOW);
    digitalWrite(GREEN, LOW);
  }
}
