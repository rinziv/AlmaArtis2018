class OminoDiNeve {
  float x;
  float y;
  float r = 25;
  float speedx = 2;
  float speedy = 2;
  

  OminoDiNeve(float _x, float _y, float _r, float _speedx, float _speedy){
    x = _x;
    y = _y;
    r = _r;
    speedx = _speedx;
    speedy = _speedy;
  }

  void display() {
    fill(255);  
    line(x, y, x+r*1.5, y-r/2);
    line(x, y, x-r*1.5, y-r/2);
    ellipse(x, y-r-r/2, r/1.5*2, r/1.5*2);
    ellipse(x, y, r*2, r*2);
    fill(0);
    ellipse(x, y, r/5, r/5);
    ellipse(x, y-r/3, r/5, r/5);
    ellipse(x, y+r/3, r/5, r/5); 
    ellipse(x-r/3, y-r-r/2, r/10, r/10);
    ellipse(x+r/3, y-r-r/2, r/10, r/10);
  }

  void move() {
    x = x + speedx;
    y = y + speedy;
  }

  void bounce() {
    if ( x < 0 || x > width) {
      speedx = speedx * -1;
    }
    if ( y < 0 || y > height) {
      speedy = speedy * -1;
    }
  }
}