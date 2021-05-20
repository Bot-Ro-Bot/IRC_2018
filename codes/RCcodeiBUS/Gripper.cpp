#include"Gripper.h"

Servo gripperServo[6];

Gripper::Gripper(byte pin, byte servoInUse) {
  this->pin = pin;

  gripperServo[servoInUse].attach(pin);
  count = 0.00;
}

void Gripper::Move(uint16_t angle, byte servoInUse) {
  if (angle > 1500) {
    count += 0.2;
  }
  else if (angle < 1500) {
    count -= 0.2;
  }
  angle = constrain(map(gripperServo[servoInUse].read(), 0, 180, 1000, 2000) + (int) count, 1000, 2000);
  gripperServo[servoInUse].writeMicroseconds(angle);
 // Serial.println(angle);
}

bool Gripper::detachServo(byte servoInUse) {
  gripperServo[servoInUse].detach();
  return true;
}

void Gripper:: shoot(byte servoInUse) {
  gripperServo[servoInUse].writeMicroseconds(shootPulse);
}

void Gripper::MOVE(uint16_t angle) {
  if (angle > 1500) {
    count += 0.2;
  }
  else if (angle < 1500) {
    count -= 0.2;
  }
  angle = constrain(map(gripperServo[0].read(), 0, 180, 1000, 2000) + (int) count, 1000, 2000);
  gripperServo[0].writeMicroseconds(angle);
  Serial.println(angle);
}
