int bolaX = 300;
int bolaY = 300;
int veloX = -8;
int veloY = 8;
int score = 0;
PFont myfont;

void setup(){
  
  size(600,500);
  myfont = loadFont("Helvetica-48.vlw");
  rectMode(CENTER);
}

void draw(){
  background(#ffffff);
  fill(#f9789d);
  ellipse(bolaX,bolaY,20,20);
  bolaX += veloX;
  bolaY += veloY;
  
  textFont(myfont);
  textSize(40);
  fill(0,0,250);
  text("Score: "+score,250,30);
  
  if(bolaY >= 490 || bolaY <= 10){
    veloY = -veloY;
  }
  
  if(touchedPong() || bolaX <= 10){
    veloX = -veloX;
  }
  
  if(bolaX > 600){
    exit();
  }
  
  fill(0);
  
  rect(580, mouseY + 10, 20,80);
  
//  if(bolaX > 580){
//     if(bolaY > mouseY && bolaY < mouseY){
       
//        veloX = -veloX;
//  }  
//}
}
boolean touchedPong(){
  
  if(bolaX >= 578 && bolaX <= 600 && bolaY >= mouseY + 10 && bolaY <= mouseX + 90 ) {
    score++;
    return true;
  }
  
  return false;
}