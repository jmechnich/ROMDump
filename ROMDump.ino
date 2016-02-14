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
// microcontroller and e.g. several daisy-chained CD4520 dual 4-bit counters.
// It was tested with a Teensy 3.1 board for dumping an Amiga Kickstart ROM.

/*
 * Settings
 */

// address size
#define ADDR_NBIT 16
// data size
#define DATA_NBIT 16
// comment out if LSB first
#define DATA_MSBFIRST

// for counter testing use same range as address
//#define DATA_NBIT ADDR_NBIT

// uncomment the following line in order to add a 1us pause between address
// change and readout if ROM is slow
//#define WAIT_1US

// data readout pins are sequential from PIN_START to PIN_N-1
#define PIN_START 0
#define PIN_N     DATA_NBIT

// counter clock and reset
#define PIN_CLOCK 20
#define PIN_RESET (PIN_CLOCK+1)

/*
 * Start of code
 */

#define ADDR_MAX (1 << ADDR_NBIT)
 
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
#ifndef DATA_MSBFIRST
  for (uint8_t i=0; i<DATA_NBIT/8; ++i)
#else
  for (int8_t i=(DATA_NBIT/8)-1; i>=0; --i)
#endif
    Serial.print(char((data >> (i*8))& 0xff));
  Serial.print("', bin: ");
  Serial.println(data,BIN);
}

// reset counter
void reset() {
  digitalWrite(PIN_RESET,HIGH);
  digitalWrite(PIN_RESET,LOW);
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
#ifndef DATA_MSBFIRST
  for (uint8_t i=0; i<DATA_NBIT/8; ++i)
#else
  for (int8_t i=(DATA_NBIT/8)-1; i>=0; --i)
#endif
    Serial.print(char((data >> (i*8))& 0xff));
  } while (address != ADDR_MAX);
  Serial.flush();
}

// counterTest() helper function: read count from pins and convert to integer
uint32_t toInt() {
  uint32_t ret = 0;
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

  uint8_t nbits = log2(address);
  if (nbits == ADDR_NBIT) {
    Serial.print("All ");
    Serial.print(ADDR_NBIT);
    Serial.println(" bits seem to be working");
  } else if (nbits < ADDR_NBIT) {
    Serial.print("Premature overflow: ");
    Serial.print(address);
    Serial.print(" != ");
    Serial.println(toInt());
    Serial.print(nbits);
    Serial.println(" bits processed so far");
  }
  Serial.print("Runtime: ");
  Serial.print((stop-start)/1000.);
  Serial.println(" seconds");
}

void setup() {
  for (uint8_t i=PIN_START; i<PIN_N; ++i)
    pinMode(i,INPUT);
    
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

