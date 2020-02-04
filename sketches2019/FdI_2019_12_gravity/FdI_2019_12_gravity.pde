Ball ball;
PImage img;


void setup() {
  size(400, 400);
  img = loadImage("mushroom.png");
  ball = new Ball();
}

void draw() {
  background(#98F4FF);
  fill(#955209);
  noStroke();
  rect(0,height/2, width, height);
  ball.show();
  ball.update();
  ball.bounce();
}

void keyPressed(){
  println("jump!!");
  ball.jump();
}