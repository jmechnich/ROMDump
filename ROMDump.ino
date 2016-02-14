/*
  Copyright (c) 2016 Jörg Mechnich <joerg.mechnich@gmail.com>

  Permission is hereby granted, free of charge, to any person obtaining
  a copy of this software and associated documentation files (the
  "Software"), to deal in the Software without restriction, including
  without limitation the rights to use, copy, modify, merge, publish,
  distribute, sublicense, and/or sell copies of the Software, and to
  permit persons to whom the Software is furnished to do so, subject to
  the following conditions:
  
  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

// This sketch can be used for dumping (E)PROM contents using a
// microcontroller and e.g. two daisy-chained CD4520 dual 4-bit counters.
// It was tested with a Teensy 3.1 board for dumping an Amiga Kickstart ROM.

// address range (maximum 17-bit -> 1 << 17)
const uint32_t addressMax = 1 << 17;

// uncomment the following line in order to add a 1us pause between address
// change and readout
//#define WAIT_1US

// readout pins
const uint8_t PIN_START = 0;
const uint8_t PIN_N     = 16;
// extra address bit (counters only do 16-bit)
const uint8_t PIN_EXBIT = 16;
// counter clock and reset
const uint8_t PIN_CLOCK = 17;
const uint8_t PIN_RESET = 18;

// current address
uint32_t address  = 0;

// print current address and memory content in different formats
void print() {
  uint16_t data = 0;
  for (uint8_t i=PIN_START; i < PIN_N; ++i) {
    data |= digitalRead(i) << i;
  }
  Serial.print("address: 0x");
  Serial.print(address,HEX);
  Serial.print(", hex: 0x");
  Serial.print(data,HEX);
  Serial.print(", chr: '");
  Serial.print(char(data & 0xff));
  Serial.print(char(data >> 8));
  Serial.print("', bin: ");
  Serial.println(data,BIN);
}

// reset counter
void reset() {
  digitalWrite(PIN_RESET,HIGH);
  digitalWrite(PIN_RESET,LOW);
  digitalWrite(PIN_EXBIT,LOW);
  address  = 0;
#ifdef WAIT_1US
  delayMicroseconds(1);
#endif
}

// increase address by one
void next() {
  digitalWrite(PIN_CLOCK,HIGH);
  digitalWrite(PIN_CLOCK,LOW);
  ++address;
  if (address == (1 << 16)) {
    // if address is larger than 16-bit use extra pin from uC
    digitalWrite(PIN_EXBIT,HIGH);
  }
#ifdef WAIT_1US
  delayMicroseconds(1);
#endif
}

// dump memory to serial port
void dump() {
  reset();
  uint16_t data = 0;
  do {
    data = 0;
    for (uint8_t i=PIN_START; i < PIN_N; ++i) {
      data |= digitalRead(i) << i;
    }
    next();
    Serial.print(char(data >> 8));
    Serial.print(char(data & 0xff));
  } while (address != addressMax);
  Serial.flush();
}

// counterTest() helper function: read counter state from pins and convert to integer
uint16_t toInt() {
  uint16_t ret = 0;
  for (uint8_t i=PIN_START; i < PIN_N; ++i)
    ret += digitalRead(i) << i;
  return ret;
}

// iterate counter and check if it works properly
void counterTest() {
  Serial.println("Starting counter test");
  reset();
  unsigned long start = millis();
  // stops on error or if counter overflows
  while( address == toInt())
    next();
  unsigned long stop = millis();
  Serial.print("Runtime: ");
  Serial.print((stop-start)/1000.);
  Serial.println(" seconds");
  Serial.print(address);
  Serial.print(" != ");
  Serial.println(toInt());
}

void setup() {
  for (uint8_t i=PIN_START; i<PIN_N; ++i)
    pinMode(i,INPUT);
    
  // EXTRA BIT
  pinMode(PIN_EXBIT,OUTPUT);
  digitalWrite(PIN_EXBIT,LOW);
  // CLOCK
  pinMode(PIN_CLOCK,OUTPUT);
  digitalWrite(PIN_CLOCK,LOW);
  // RESET
  pinMode(PIN_RESET,OUTPUT);
  digitalWrite(PIN_RESET,LOW);
  
  Serial.begin(115200);
  delay(1000);
  reset();  
}

void loop() {
  if( Serial.available()){
    switch( Serial.read()){
      // SPACE - print current memory address and data
      case ' ':
        print();
        break;
      // n - go to next memory address and print data
      case 'n':
        next();
        print();
        break;
      // r - reset counter
      case 'r':
        reset();
        break;
      // t - start counter test (connect counter pins to digital pins 0-15)
      case 't':
        counterTest();
        break;
      // d - dump memory to serial port
      case 'd':
        dump();
        break;
      default:
        break;
    }
  }
}

