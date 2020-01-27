class Car {
  // 1. Dati
  float cx;
  float cy;
  float ch;
  color cc;


  // 2. Setup
  Car(float x, color c, float y) {
    cx = x;
    cy = y;
    ch = 32;
    cc = c;
  }


  // 3. Funzioni
  void drawCar(float x, float y, float h ) {
    fill(cc);
    rect(x, y, 2*h, h);
    fill(0);
    rect(x - h/2, y -h/2, h/2, h/4);
    rect(x + h/2, y -h/2, h/2, h/4);
    rect(x - h/2, y +h/2, h/2, h/4);
    rect(x + h/2, y +h/2, h/2, h/4);
  }

  void show() {
    drawCar(cx, cy, ch);
  }

  void update() {
    if(cy < 100){
      cx = cx - 2;
    }else{
      cx = cx + 2;
    }
  }

  void bounce() {
    if (cx < -64) {
      cx = width + 64;
      //ch = random(10, 80);
    }
    if (cx > width + 64){
      cx = 0 -64;
    }
  }
}