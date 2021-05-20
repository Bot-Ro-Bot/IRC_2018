#ifndef Motor_h
#define Motor_h

#include<Arduino.h>
#include"config.h"

class Motor {
  protected:
    byte enablePin;
    byte forwardPin;
    byte backPin;


  public:
    Motor(byte enablePin, byte forwardPin, byte backPin);
    static uint16_t Speed;
    void Mixer(int pwmValue);
    void forward(uint16_t Speed);
    void back(uint16_t Speed);
    void STOP();
    void brake();
};
#endif
