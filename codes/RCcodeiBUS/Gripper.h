#ifndef Gripper_h
#define Gripper_h

#include<Arduino.h>
#include<Servo.h>
#include"config.h"

class Gripper {
  protected:
    byte pin;
    float count;
    uint16_t angle;

  public:
    Gripper(byte pin, byte servoInUse);
    void Move(uint16_t angle, byte servoInUse);
    void MOVE(uint16_t angle);
    bool detachServo(byte servoInUse);
    void shoot(byte servoInUse);
};

#endif
