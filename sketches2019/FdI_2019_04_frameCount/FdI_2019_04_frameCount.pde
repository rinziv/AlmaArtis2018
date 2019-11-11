void setup(){
  size(400,400);
  frameRate(250);
}


void draw(){
 background(255);
 fill(frameCount);
 ellipse(width/2, height/2, 100,100);
 fill(0);
 text(frameRate, 10, 30); 
 text(frameCount, 10, 50); 
}