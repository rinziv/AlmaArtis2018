class Ball {
  float x;
  float y;
  float yspeed;
  float gravity;

  Ball() {
    x = width / 2;
    y = 0;
    yspeed = 0;
    gravity = 0.3;
  }
  
  void show(){
    //ellipseMode(CENTER);
    //ellipse(x,y,10,10);
    imageMode(CENTER);
    image(img, x, y, 50, 50);
  }
  
  void update(){
    y = y + yspeed;
    yspeed = yspeed + gravity;
  }
  
  void bounce(){
    if (y > height -25){
       y = height -25;
       //yspeed = yspeed * -1 * 0.3;
       yspeed = 0;
    }
  }
  
  void jump(){
   yspeed = -10; 
  }
}