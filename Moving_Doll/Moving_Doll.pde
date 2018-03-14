int offset = 0;
boolean toright = true;

void setup(){
  size(1000,1000);
  background(0,0,0);
}

void draw(){
  
  fill(#1E90FF);
  strokeWeight(2);
  ellipse(480+offset,299,200,150);
  drawEye(450+offset,290);
  drawEye(510+offset,290);
  drawMouth(420+offset,325,6);
  drawNose(480+offset,306);
  drawHair();
  drawBody();
  drawArms();
  drawLegs();
  
  if(toright){
    offset++;
  }
  else{
    offset--;
  }
  if(offset == 20){
    toright = false;
  }
  else if(offset == -20){
    toright = true;
  }
  
}

void drawEye(int x, int y){
  
  fill(#FFFFFF);
  ellipse(x,y,40,40);
  point(x,y);
}

void drawNose(int x, int y){
  fill(#FF0000);
  strokeWeight(2);
  ellipse(x,y,20,20);
}

void drawMouth(int x, int y, int numberTeeth){
  
  fill(#FFFFFF);
  strokeWeight(2);
  for(int i=0;i<numberTeeth;i++){
    rect(x+20*i,y,20,15);
  }
}

void drawHair(){
  
  stroke(#FFC0CB);
  line(400,219,620,219);
  line(400,200,520,220);
  line(520,190,460,210);
  line(490,190,240,220);
  stroke(#000000);
}

void drawBody(){
  
  fill(#191970);
  rect(438,370,100,200);
}

void drawArms(){
  stroke(#191970);
  line(360,420,438,420);
  line(520,420,620,420);
  stroke(#000000);
}

void drawLegs(){
  
  stroke(#191970);
  line(458,570,458,670);
  line(438,670,458,670);
  line(498,570,498,670);
  line(498,670,518,670);
  stroke(#000000);
}