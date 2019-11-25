
void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  //line(50, 60, 50, 80);
  
  float offset = 0;
  while (offset <= 90) {
    line(50+offset, 60, 50+offset, 80);
    offset = offset + 10;
  }
}