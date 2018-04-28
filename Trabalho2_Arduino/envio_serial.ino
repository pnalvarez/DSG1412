int numero = 0;

void setup() {
   Serial.begin(9600);
}
void loop() {
   numero = analogRead(A0)/4;
   Serial.write(numero);
   delay(100);
}


