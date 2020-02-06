Ball ball;
Nuvola[] nuvole = new Nuvola[5];
Bird[] uccelli = new Bird[5];


PImage img;
PImage nuvola; 
PImage[] birds = new PImage[4];


void setup() {
  size(800, 400);
  img = loadImage("mushroom.png");
  nuvola = loadImage("nuvola.png");
  
  for(int i = 0; i < birds.length; i++){
     birds[i] = loadImage("mario_sprites_0"+i+".png"); 
  }
  
  ball = new Ball();
  for (int i=0; i < nuvole.length; i++) {
    nuvole[i] = new Nuvola();
  }
  for(int i = 0; i < uccelli.length; i++){
     uccelli[i] = new Bird(); 
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
  
  for (int i=0; i < uccelli.length; i++) {
    uccelli[i].show();
    uccelli[i].update();
    uccelli[i].bounce();
  }
  

  ball.show();
  ball.update();
  ball.bounce();
}

void keyPressed() {
  println("jump!!");
  ball.jump();
}