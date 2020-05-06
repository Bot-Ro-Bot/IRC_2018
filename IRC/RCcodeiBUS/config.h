#ifndef config_h
#define config_h
/*
  PWM PINS         ::    PA8 PA9 PA10 PB6 PB7 PB8 PB9 PB1 PB0 PA7 PA6 PA3 PA2 PA1 PA0
  DIGITAL PINS     ::    PB12 PB13 PB14 PB15 PA11 PA12 PA15 PB3 PB4 PB5 PB11 PB10 PA5 PA4
  ANALOG PINS      ::    PA0 PA1 PA2 PA3 PA4 PA5 PA6 PA7 PB0 PB1
  5V TOLERANT PINS ::
*/



#define BASE 0
#define ARM 1
#define WRIST 2
#define GRIP 3
#define SHOOT 4
#define TILT 5

#define shootPulse 1000

#define RED PB14
#define GREEN PB15
#define BLUE PA8

#define rxPIN PA3

#define laserPin PA15
#define tiltMotor PA6
#define shootMotor PA0


#define rMotorEnable PB1
#define rMotorForward PB10
#define rMotorBack PB11

#define lMotorEnable PB0
#define lMotorForward PB12
#define lMotorBack PB13

#define basePin PB6
#define gripPin PB7
#define wristPin PB8
#define armPin PB9



#endif
