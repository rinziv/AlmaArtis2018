class Coriandolo {
  // 1. dati
  float x;
  float y;
  color c;
  float speed;
  float alpha;
  float theta;

  // 2. setup
  Coriandolo() {
    x = random(0, width);
    y = random(0, height);
    c = color(random(255), random(255), random(255));
    speed = random(1, 10);
    alpha = 0;
    theta = random(-0.1, 0.1);
  }

  // 3. funzioni
  void show() {
    noStroke();
    fill(c);
    pushMatrix();
    translate(x,y);
    rotate(alpha);
    //rectMode(CENTER);
    rect(0, 0, 10*sqrt(speed), 10*sqrt(speed));
    popMatrix();
  }

  void update() {
    y = y + speed;
    alpha = alpha + theta;
  }

  void bounce() {
    if (y > height) {
      y = random(-30, -10); 
      x = random(0, width);
      speed = random(1, 10);
      c = color(random(255), random(255), random(255));
    }
  }
}