Pallina pallina;
PImage ball;
PImage sprite;
PImage fotogramma;
PImage[] fotogrammi;

void setup() {
  size(600, 600);
  pallina = new Pallina();
  ball = loadImage("soccer_ball.png");
  sprite = loadImage("15872.png");
  fotogramma = new PImage(48, 58);
  fotogramma.copy(sprite, 48, 124, 48, 58, 0, 0, 48, 58);

  fotogrammi = new PImage[8];
  for (int i=0; i < fotogrammi.length; i++) {
    fotogrammi[i] = new PImage(48, 58);
    fotogrammi[i].copy(sprite, i * 48, 124, 48, 58, 0, 0, 48, 58);
  }
  frameRate(15);
}



void draw() {
  background(255);
  //image(fotogrammi[frameCount % fotogrammi.length], 0, 0);
  pallina.show();
  pallina.update();
  pallina.bounce();
}