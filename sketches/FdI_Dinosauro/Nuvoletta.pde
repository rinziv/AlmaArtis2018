class Nuvoletta {
  int x;
  int y;
  int w;
  int h;
  Nuvoletta() {
    x=width+floor(random(width));
    y=40;
    w=70;
    h=30;
  }
  void show() {
    fill(100, 200, 250);
    noStroke();
    rect(x, y, w, h);
  }
  void update() {
    x=x-2;
    if (x+w<0) {
      x=width+floor(random(width));
    }
  }
}