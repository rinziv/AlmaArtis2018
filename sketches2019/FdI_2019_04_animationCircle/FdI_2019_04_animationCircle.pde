int circleX = -60;
int circleY = -60;
int circleR = 50;

void setup(){
  size(400,400);
}

void draw() {
  background(255);
  
  //show
  ellipse(circleX,circleY,circleR,circleR);
  //update
  circleX = circleX + 2;
  circleY = circleY + 2;
  circleR = circleR + 1;
}