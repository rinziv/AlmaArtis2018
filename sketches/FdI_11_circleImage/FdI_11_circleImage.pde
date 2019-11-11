

int csize = 10;
PImage pinguino;

void setup() {
  size(600, 600);
  pinguino = loadImage("pinguino.jpg");
  pinguino.resize(width, height);
  background(51);
  textSize(32);
}



void draw() {
  //image(pinguino, 0, 0);

  for (int i =0; i < 1000; i++) {


    int x = int(random(pinguino.width));
    int y = int(random(pinguino.height));

    noStroke();
    color c = pinguino.get(x, y);
    fill(c);
    ellipse(x, y, csize, csize);
  }



  //  fill(255);
  //  rect(5, 5, width - 10, 45);
  //  fill(0);
  //  text(frameRate, 10, 40);
}