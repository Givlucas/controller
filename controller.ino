#include "Keyboard.h"

int in = 9;
int val = 0;

void setup() {
  // Keyboard.begin();
  pinMode(in, INPUT);
}

void loop() {
  // while(true){
  //   delay(30000);
  //   Keyboard.write("u");
  // }
  val = digitalRead(in);
  Serial.print(val);
  delay(1000);
}
