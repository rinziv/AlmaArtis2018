void setup() {
  size(400, 400);
}  


void draw() {
  if (mouseX <= width/2) {
    background(255);
  } else {
    background(0);
  }
  stroke(128);
  line(width/2, 0, width/2, height);
}