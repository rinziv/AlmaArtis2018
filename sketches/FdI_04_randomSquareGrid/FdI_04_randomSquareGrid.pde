
int w = 10;

void setup() {
  size(400, 400);
  noLoop();
  noStroke();
}

void draw() {
  for (int j = 0; j < 40; j++) {
    for (int i=0; i < 40; i++) {
      fill(random(255),random(255),random(255));
      rect(i * w, j * w, w, w);
    }
  }
}