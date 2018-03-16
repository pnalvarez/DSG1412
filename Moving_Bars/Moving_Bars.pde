
int heights[] = {0,0,0};
boolean up[] = {true,false,true};

void setup(){
  size(1000,1000);
}
void draw(){
  
  fill(random(250),random(250),random(250));
  strokeWeight(1);
  
  rect(0,200 + heights[0],300,60);
  rect(300,400 + heights[1],300,60);
  rect(600,600 + heights[2],300,60); 
  
  moveBar(0);
  moveBar(1);
  moveBar(2);
}

void moveBar(int pos){
  
  if(up[pos]){
    heights[pos]++;
  }
  else{
    heights[pos]--;
  }
  if(heights[pos] == 100){
    up[pos] = false;
  }
  else if(heights[pos] == -100){
    up[pos] = true;
  }
}