class Dinosauro {
  int x;
  int y;
  int w;
  int h;
  int yd;
  Dinosauro() {
    x=20;
    y=130;
    w=30;
    h=30;
    yd=130;
  }
  void show() {
    fill(50, 50, 60);
    noStroke();
    rect(x, y, w, h);
  }

  void update() {
    int d=yd-y;
    if (d!=0) {
      int v=d/abs(d);
      y=y+v*2;
    } else if (yd==100) {
      yd=130;
    }
  }
  void jump() {
    yd=100;
  }
}