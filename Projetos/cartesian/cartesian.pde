PFont myFont;
PFont numberFont;
int x;
int y;

void setup(){
  
  size(200,200);
  background(#ffffff);
  myFont = loadFont("HelveticaNeue-15.vlw");
  fill(0);
  line(100,0,100,200);
  line(0,100,200,100);
  
  textFont(myFont);
  text("x",190,98);
  text("y",102,10);
  frameRate(10);
}

void draw(){
  
  fill(0);
  
  if(mousePressed){
  
  erasePoint();
  rect(mouseX,mouseY,1,1);
  x=mouseX-100;
  y=mouseY-100;
  println(x+","+y);
  }
}

void erasePoint(){
  background(#ffffff);
  fill(0);
  line(100,0,100,200);
  line(0,100,200,100);
  text("x",190,98);
  text("y",102,10);
}