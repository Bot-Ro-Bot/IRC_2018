#include"Shooter.h"

void Shooter::shoot() {
  Gripper::shoot(SHOOT);
}

void laserON(bool laserFlag) {
  if (laserFlag) {
    digitalWrite(laserPin, HIGH);
  } else
    digitalWrite(laserPin, LOW);
}
