class Nuvola {
  // 1.dati
  float x;
  float y;
  float xspeed;

  //2. setup
  Nuvola() {
    x = random(width+100, 2*width);
    y = random(0, height / 2);
    xspeed = random(-3, -1);
  }

  //3. funzioni
  void show() {
    rectMode(CENTER);
    fill(255);
    stroke(0);
    rect(x, y, 75, 30);
  }

  void update() {
    x = x + xspeed;
  }

  void bounce() {
    if (x < -40) {
      x = random(width+100, 2*width);
      y = random(0, height / 2);
      xspeed = random(-3, -1);
    }
  }
}