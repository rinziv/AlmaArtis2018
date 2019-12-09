float cx = 750;
float cy = 50;
float ch = 32;

float sl = 0;

void setup() {
  size(800, 200);
}


void draw() {
  background(160);
  rectMode(CENTER);

  show();
  update();
  bounce();
}

void drawCar(float x, float y, float h ) {
  fill(128);
  rect(x, y, 2*h, h);
  fill(0);
  rect(x - h/2, y -h/2, h/2, h/4);
  rect(x + h/2, y -h/2, h/2, h/4);
  rect(x - h/2, y +h/2, h/2, h/4);
  rect(x + h/2, y +h/2, h/2, h/4);
}

void drawMiddleLine(float w, float gap, float h){
  fill(255);
  for(int i =-1; i < width/w; i++){
    rect(sl+i*(w+gap), height / 2, w ,h);
  }
}

void show() {
  drawMiddleLine(45,20,10);
  drawCar(cx, cy, ch);
}

void update() {
  cx = cx - 2;
  sl = sl + 1;
}

void bounce() {
  if (cx < -64) {
    cx = width + 64;
    ch = random(10, 80);
  }
  
  if (sl > 45+20){
    sl = 0;
  }
}