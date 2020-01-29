Ball ball;
PImage img;


void setup() {
  size(400, 400);
  img = loadImage("mushroom.png");
  ball = new Ball();
}

void draw() {
  background(255);
  ball.show();
  ball.update();
  ball.bounce();
}

void keyPressed(){
  println("jump!!");
  ball.jump();
}