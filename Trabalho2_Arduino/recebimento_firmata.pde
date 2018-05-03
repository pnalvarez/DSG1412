import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

int valor = 0;
int valor1 = 0;
int posX1;
int posX2;
int velX1;
int velX2;
boolean up = true;

void setup() {
   size(1800, 800);
   erase();
   posX1 = width/2;
   posX2 = width/2;
   println(Arduino.list());
   arduino = new Arduino(this, Arduino.list()[1], 57600);
   
   
}

void draw() {
   //background(255);
   valor = arduino.analogRead(0);
   valor1 = arduino.analogRead(1);
   //ellipse(320,240,valor,valor1);
   
    erase();
   velX1 = valor/40;
   velX2 = valor1/40;
   fill(0);
   stroke(#ffffff);
   
  if(up){
  drawVehicle(posX1,100,248,0,0);
  drawVehicle(posX1,300,0,248,0);
  drawVehicle(posX2,460,0,0,250);
  drawVehicle(posX2,620,248,248,0);
  up = false;
  }
  
  else{
  drawVehicle(posX1,98,248,0,0);
  drawVehicle(posX1,298,0,248,0);
  drawVehicle(posX2,462,0,0,250);
  drawVehicle(posX2,618,248,248,0);
    
  }
  if(posX1 > width){
    posX1 = 0;
  }
   else{
     posX1+=velX1;
   }
   
   if(posX2 > width){
     posX2 = 0;
   }
   else{
     posX2+=velX2;
   }
}

void erase(){
  
  background(#cccccc);
  strokeWeight(20);
  
  stroke(#ffffff);
  line(0,200,width,200);
  
  stroke(#ffffff);
  line(0,400,width,400);
  
  stroke(#ffffff);
  line(0,600,width,600);
  
  stroke(#ffffff);
  line(0,740,width,740);
}

void drawVehicle(int x, int y, int r, int g, int b){
  
  fill(r,g,b);
  strokeWeight(1);
  rect(x,y,90,60);
  fill(0);
  ellipse(x+3,y+60,38,38);
  ellipse(x+90,y+60,38,38);
  fill(#ffffff);
  strokeWeight(2);
  point(x+3,y+60);
  point(x+90,y+60);
  rect(x+8,y+10,26,26);
  rect(x+51,y+10,26,26);
  fill(0);
}