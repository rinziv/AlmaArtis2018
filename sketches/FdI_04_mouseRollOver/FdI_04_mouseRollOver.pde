float x = 100;
float y = 100;
float w = 200;
float h = 100;

void setup() {
  size(400, 400);
}


void draw() {
  background(255);


  rect(x, y, w, h);

  // if (mouse sopra il rettangolo){
  if (mouseX >= x && mouseX <= (x+w)) {
    if (mouseY >= y && mouseY <= (y+h)) {
      fill(200, 0, 0);
    } else {
      fill(128);
    }
  } else {
    fill(128);
  }
}