import processing.serial.*;

Serial myPort;
int numero;
int posX = 400;
int posY = 300;
int veloX = -1;
int veloY = 1;

void setup() {
   size(800, 600);
   rectMode(CENTER);
   noStroke();
   println(Serial.list());
   String portName = Serial.list()[1];
   myPort = new Serial(this, portName, 9600);
}
////////////////////////
void draw(){
   background(0);
   rect(posX,posY,20,20);
   posX+=veloX;
   posY+=veloY;
   if ( myPort.available() > 0) {
      numero = myPort.read();
   }
   
   if (posY >= height-10 ) { //tamnho da tela - a metade do tamanho da bolinha
    veloY=-veloY;
  }
  //colisao no pad esquerdo: computador
  rect(30 ,posY ,20,120);
  if(posX <=30+10+10){
    veloX=-veloX;
  }
  //colisao na parede de cima
  if(posY <= 0+10){
    veloY=-veloY;
  }
  //colisao no pad do jogador
  rect(width-30,numero * 3,20,120);
  if(posX >= width-50 && posY >= numero-60-10 && posY <= numero+70){
    veloX=-veloX;
}
   //rect(numero * 3,100,20,20);
   println(numero);
}