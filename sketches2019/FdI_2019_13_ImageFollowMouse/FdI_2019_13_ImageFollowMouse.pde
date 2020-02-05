PImage img;
void setup(){
  size(600,600);
  img = loadImage("mushroom.png");
}


void draw(){
  noCursor();
  background(255);
  imageMode(CENTER);
  image(img, mouseX, mouseY, 50,50);
}