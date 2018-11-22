void setup(){
  size(400,400);
  ellipseMode(CENTER);
  background(255);
}



void draw() {
  fill(255,1);
  noStroke();
  rect(0,0,width,height);
  stroke(0);
  fill(0,40,255);
  ellipse(mouseX,mouseY, 50,50);
}