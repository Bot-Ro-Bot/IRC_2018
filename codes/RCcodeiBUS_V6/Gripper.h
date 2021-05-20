#ifndef Gripper_h
#define Gripper_h

#include<Arduino.h>
#include<Servo.h>
#include"config.h"
#include"Motor.h"


class Gripper {
  private:
    float angle;
    uint16_t channel_val;

  public:
    Gripper(byte pin, byte servoInUse);
    void Move(uint16_t channel_val, byte servoInUse);
    bool detachServo(byte servoInUse);
    void shoot(bool SHOOT_FLAG,uint16_t channel_val);
    void setAngle(uint8_t ANGLE);
};

void readAngle();

#endif
