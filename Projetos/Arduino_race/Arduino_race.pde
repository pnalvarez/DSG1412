int posX;
int velX;

void setup(){
  
  size(800,800);
  erase();
  posX = width/2;
}

void draw(){
  erase();
  
  velX = mouseX/10;
  fill(0);
  stroke(#ffffff);
  //ellipse(posX, 25,30,30);
  //ellipse(posX,80,30,30);
  //ellipse(posX,130,30,30);
  //ellipse(posX,180,30,30);
  
  drawVehicle(posX,100,248,0,0);
  drawVehicle(posX,300,0,248,0);
  drawVehicle(posX,460,0,0,250);
  drawVehicle(posX,620,248,248,0);
  
  if(posX > width){
    posX = 0;
  }
  else{
    posX = posX + velX;
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