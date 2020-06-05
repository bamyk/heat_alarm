#include <dht.h>

dht DHT;

#define DHT11_PIN 7

void setup(){
  Serial.begin(9600);
}

void loop()
{
  int chk = DHT.read11(DHT11_PIN);
  delay(1000);
  Serial.print("Temperature = ");
  Serial.println((int)DHT.temperature);  // the (int) part prints only integer instead of float
  delay(2000);
}
