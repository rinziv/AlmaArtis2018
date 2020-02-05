Ball ball;
Nuvola[] nuvole = new Nuvola[5];

PImage img;

void setup() {
  size(800, 400);
  img = loadImage("mushroom.png");
  ball = new Ball();
  for (int i=0; i < nuvole.length; i++) {
    nuvole[i] = new Nuvola();
  }
}

void draw() {
  background(#98F4FF);
  fill(#955209);
  noStroke();
  rectMode(CORNER);
  rect(0, height/3*2, width, height);  

  for (int i=0; i < nuvole.length; i++) {
    nuvole[i].show();
    nuvole[i].update();
    nuvole[i].bounce();
  }
  

  ball.show();
  ball.update();
  ball.bounce();
}

void keyPressed() {
  println("jump!!");
  ball.jump();
}