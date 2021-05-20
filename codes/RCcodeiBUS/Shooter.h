#ifndef Shooter_h
#define Shooter_h

#include<Arduino.h>
#include"Gripper.h"
#include"config.h"

class Shooter: public Gripper {
  public:
    Shooter(byte pin, byte servoInUse): Gripper(pin,servoInUse) {
    }
    void shoot();
    void reload(bool reloadFlag);
};

void laserON(bool laserFlag);

#endif
