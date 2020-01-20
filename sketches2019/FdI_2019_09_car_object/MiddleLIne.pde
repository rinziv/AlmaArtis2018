class MiddleLine {
  // 1. Dati
  float sl;


  // 2. Costruttuore
  MiddleLine() {
    sl = 0;
  }
  // 3. Funzioni
  void drawMiddleLine(float w, float gap, float h) {
    fill(255);
    for (int i =-1; i < width/w; i++) {
      rect(sl+i*(w+gap), height / 2, w, h);
    }
  }
  void show() {
    drawMiddleLine(45, 20, 10);
  }

  void update() {
    sl = sl + 1;
  }

  void bounce() {
    if (sl > 45+20){
      sl = 0;
    }
  }
}