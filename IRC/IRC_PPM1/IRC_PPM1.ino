//////////////////////////////////////////////////////////////////////////////RC_Bot(IRC)////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////WRITTEN BY DEDICATED MEMBERS OF RAAC//////////////////////////////////////////////////////////////

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


#include<Servo.h>
#define PPM_pin 1  //connect to interrupt pin 0 that is digitalPin 2
      
volatile unsigned long pulseBegin=0;
volatile unsigned long pulseEnd=0;
volatile long channel[11];
volatile int i=0;
volatile bool val= false;

Servo s1; 

void setup(){
  Serial.begin(115200);
  attachInterrupt(PPM_pin,readChannel,RISING);
  s1.attach(9);
}

void loop(){
  printCheck();
  s1.write(channel[8]);

  val = (micros()==0)?true:false;
    
   
}

void readChannel(){                               //ISR for the Interrupt
  pulseBegin = micros();
  if(i>=0){
    channel[i]=pulseBegin-pulseEnd;
    if(channel[i]>3000){
      i=0;
    }
  }
  i++;
  pulseEnd=pulseBegin;
}

void printCheck(){
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
  Serial.print(channel[9]);
  Serial.print(" - ");
  Serial.println(channel[10]);
}
