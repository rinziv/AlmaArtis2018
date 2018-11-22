int circleX = 0;
int circleY = 100;
int d = 50;

void setup(){
  size(400,400);
  ellipseMode(CENTER);
}


void draw(){
    background(255);
    stroke(0);
    fill(127);
    ellipse(circleX, circleY, d,d);
    //circleX = circleX + 1;
    //circleY = circleY + 1;
    //d = d + 5;
    d = mouseX + mouseY;
}