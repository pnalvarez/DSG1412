
int x=0;
int y=0;
int largura=200;
int altura=200;
int flag;
int x2=0;
int y2=500;

void setup(){
size(1000,1000);
}

void draw(){
 
background(0,250,0);
strokeWeight(2);
fill(0,0,250);
rect(x,y,largura,altura);

if(x<500 && y<500){
    x++;
    y++;
}
else{
  draw2();
}
}

void draw2(){
  
  strokeWeight(2);
  fill(250,0,0);
  rect(x2,y2,largura,altura);
  
  if(x2<500){
    x2++;
  }
}
  
 