class Bird {
  // 1.dati
  float x;
  float y;
  float xspeed;
  int pImg;

  //2. setup
  Bird() {
    x = random(width+100, 2*width);
    y = random(0, height / 2);
    xspeed = random(-3, -1);
    pImg = int(random(4));
  }

  //3. funzioni
  void show() {
    imageMode(CENTER);
    fill(255);
    stroke(0);
    image(birds[pImg], x, y);
    //rect(x, y, 75, 30);
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