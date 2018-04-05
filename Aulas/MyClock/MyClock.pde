PFont minhaFonte;
PFont timeFont;

int h, m, s;

void setup(){
  
  size(600,600);
  background(#ffffff);
  minhaFonte = loadFont("Helvetica-48.vlw");
  timeFont = loadFont("Monaco-48.vlw");
  frameRate(10);
}

void draw(){
  
  background(#ffffff);
  textFont(minhaFonte);
  textSize(70);
  fill(0,0,250);
  text("Time of day ",150,200);
  fill(0);  
  textFont(timeFont);
  textSize(47);
  fill(0,100,250);
  

  text(hour() + " : " + minute() + " : " + second(), 150,270);
  
  stroke(0,0,0);
  fill(#ffffff);
  ellipse(270,420,290,290);
  
  putNumber(1);
  
  changeSeconds();
  changeMinutes();
  changeHours();
  changeMilis();
  
  ellipse(0,0,200,200);
}

void changeSeconds(){
  pushMatrix();
  translate(270,420);
  stroke(250,0,0);
  rotate(second()*PI/30);
  line(0,0,0,-130);
  popMatrix();
}
void changeMinutes(){
   pushMatrix();
  translate(270,420);
  stroke(0,0,250);
  
  
    rotate(minute()*PI/30);
  
  line(0,0,0,-115);
  popMatrix();
}
void changeHours(){
  pushMatrix();
  
  translate(270,420);
  stroke(0,0,0);
  

    rotate(hour()*PI/30);
  
  line(0,0,0,-80);
  
  popMatrix();
}

void changeMilis(){
  pushMatrix();
  
  translate(270,420);
  stroke( #ffff00);
  
  rotate(millis()*PI/500);
  
  line(0,0,0,-145);
  
  popMatrix();
}

void putNumber(int num){
  
  pushMatrix();
  
  translate(270,420);
  stroke(0);
  rotate(num*PI/6);
  text(num,0,-2);
  
  popMatrix();
}