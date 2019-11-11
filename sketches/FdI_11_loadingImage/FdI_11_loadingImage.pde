
PImage pinguino;

void setup() {
  size(600, 600);
  pinguino = loadImage("pinguino.jpg");
}



void draw() {
  background(51);
  image(pinguino, 0, 0);
}