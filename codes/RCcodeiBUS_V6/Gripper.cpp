#include"Gripper.h"

Servo gripperServo[4];

Gripper::Gripper(byte pin, byte servoInUse) {
  gripperServo[servoInUse].attach(pin);
  angle = 0;
}

void Gripper::Move(uint16_t channel_val, byte servoInUse) {
  if (channel_val > 1500 && angle <= 180 ) {
    angle += RESOLUTION;
  }
  else if (channel_val < 1500 && angle >= 0) {
    angle -= RESOLUTION;
  }
  gripperServo[servoInUse].write((int) angle);
//  Serial.println(angle);
}

bool Gripper::detachServo(byte servoInUse) {
  gripperServo[servoInUse].detach();
  return true;
}

void Gripper:: shoot(bool SHOOT_FLAG, uint16_t channel_val) {
  if (SHOOT_FLAG) {
    Move(channel_val, SHOOT);
  }
  else {
    gripperServo[SHOOT].write(shootAngle);
  }

}

void Gripper::setAngle(uint8_t ANGLE) {
  //  uint8_t temp = gripperServo[WRIST].read();
  //  while (temp != ANGLE) {
  //    gripperServo[WRIST].write(temp);
  //    delay(5);
  //    temp = (ANGLE == 180) ? --temp : ++temp;
  //  }
  //   Serial.println(temp);
  
  if (ANGLE == 0) {
    for (int i = 180; i >= 0 ; i--) {
      gripperServo[WRIST].write(i);
      delay(10);
    }
  }
  if (ANGLE == 180) {
    for (int i = 0 ; i <= 180; i++) {
      gripperServo[WRIST].write(i);
      delay(10);
    }
  }
}


void readAngle() {
  Serial.print(" GRIP ::  ");
  Serial.print(gripperServo[GRIP].read());
  Serial.print(" - ");
  Serial.print(" WRIST ::  ");
  Serial.print(gripperServo[WRIST].read());
  Serial.print(" - ");
  Serial.print(" TILT ::  ");
  Serial.print(gripperServo[TILT].read());
  Serial.print(" SHOOT ::  ");
  Serial.print(" - ");
  Serial.println(gripperServo[SHOOT].read());
}
