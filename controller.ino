#include "Keyboard.h"

void setup() {
  Keyboard.begin();
}

void loop() {
  while(true){
    delay(30000);
    Keyboard.write("u");
  }
}
