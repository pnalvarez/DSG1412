int posX;
int velX;

void setup(){
  
  size(200,200);
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
  
  drawVehicle(posX,8,248,0,0);
  drawVehicle(posX,57,0,248,0);
  drawVehicle(posX,width/2,0,0,250);
  drawVehicle(posX,149,248,248,0);
  
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
  line(0,26,200,26);
  
  stroke(#ffffff);
  line(0,80,200,80);
  
  stroke(#ffffff);
  line(0,130,200,130);
  
  stroke(#ffffff);
  line(0,180,200,180);
}

void drawVehicle(int x, int y, int r, int g, int b){
  
  fill(r,g,b);
  strokeWeight(1);
  rect(x,y,30,30);
  fill(0);
  ellipse(x+3,y+30,10,10);
  ellipse(x+26,y+30,10,10);
}