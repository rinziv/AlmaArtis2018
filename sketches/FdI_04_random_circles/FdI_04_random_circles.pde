float x = 100;
float y = 100;
float d = 50;

float r = 100;
float g = 100;
float b = 100;

void setup(){
  //size(400,400);
  fullScreen();
  background(0); 
  //frameRate(3);
}


void draw(){
  fill(r, g, b);
  ellipse(x, y, d, d);
  x = random(0, width);
  y = random(0, height);
  d = random(10, 50);
  
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  
}