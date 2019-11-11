class Cactus {
  int x;
  int y;
  int w;
  int h;
  Cactus () {
    x=width+floor(random(width));
    y=130;
    w=30;
    h=40;
  }
  void show() {
    fill(50, 180, 50);
    noStroke();
    rect(x, y, w, h);
  }
  void update() {
    x=x-5;
    if (x+w<0) {
      x=width+floor(random(width));
    }
  }
}