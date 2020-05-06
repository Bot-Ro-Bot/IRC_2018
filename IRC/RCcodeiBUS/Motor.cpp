#include"Motor.h"

Motor::Motor(byte enablePin, byte forwardPin, byte backPin){
 this-> enablePin=enablePin;
 this-> forwardPin=forwardPin;
 this-> backPin=backPin;

 pinMode(enablePin,OUTPUT);
 pinMode(forwardPin,OUTPUT);
 pinMode(backPin,OUTPUT);
}

void Motor::forward(uint16_t Speed){
  analogWrite(enablePin,Speed);
  digitalWrite(forwardPin,HIGH);
  digitalWrite(backPin,LOW);  
}

void Motor::back(uint16_t Speed){
  analogWrite(enablePin,Speed);
  digitalWrite(forwardPin,LOW);
  digitalWrite(backPin,HIGH);
}

void Motor::STOP(){
  analogWrite(enablePin,0);
  digitalWrite(forwardPin,LOW);
  digitalWrite(backPin,LOW);
}

/*void Motor::rotate(uint16_t Speed, bool directionFlag){
  analogWrite(enablePin,Speed);
  if(directionFlag){
    digitalWrite(forwardPin,HIGH);
    digitalWrite(backPin,LOW);  
  }
  else{
    digitalWrite(forwardPin,LOW);
    digitalWrite(backPin,HIGH);
  }
}
*/
void Motor:: Mixer(int pwmValue){
  if(pwmValue<0){
    back(abs(pwmValue));
  }
  else if(pwmValue>0){
    forward(pwmValue);
  }
  else if(-3<pwmValue<3){
    STOP();
  }
}
