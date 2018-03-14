int x=380;
int y=360;
int i=0;

void setup(){
size(1000,1000);
background(250,250,250);
}

void draw(){
  
  strokeWeight(2);
  fill(0,0,200);
  rect(x-i,y,100+2*i,100);
  i++;
}