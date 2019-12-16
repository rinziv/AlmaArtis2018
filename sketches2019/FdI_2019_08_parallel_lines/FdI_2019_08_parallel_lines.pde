void setup() {
  size(400, 400);
}


void draw() {
  for (int i=0; i < 5; i++) {
    line(i * 20, 380, i*20 + 200, 380 - 200);
  }
}