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
  
  changeSeconds();
  changeMinutes();
  changeHours();
  
  ellipse(0,0,200,200);
}

void changeSeconds(){
  pushMatrix();
  translate(270,420);
  stroke(250,0,0);
  rotate(second()*PI/30);
  line(0,0,0,-145);
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