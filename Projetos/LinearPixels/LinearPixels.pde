color black = color(0);
color white = color(#ffffff);
color pink = color(250, 102, 204);

int i;

  void setup(){
    
    size(400,600);
    background(#ffffff);
    i = 1;
  }
  
  void draw(){
    
    loadPixels();
    color rand = color(random(250),random(250),random(250));
    pixels[i] = rand;
    pixels[i+1] = rand;
    pixels[i+2] = rand;
    i+=4;
    updatePixels();
  }