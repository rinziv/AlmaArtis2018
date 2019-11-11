class Pallina {
  PVector pos;
  PVector vel;


  Pallina(){
    pos = new PVector(100,300);
    vel = new PVector(5, 0);
  }

  void show() {
    //fill(255);
    //stroke(0);
    //ellipse(pos.x, pos.y, 15, 15);
    //image(ball, pos.x, pos.y, 50, 50);
    image(fotogrammi[frameCount % fotogrammi.length], pos.x, pos.y);
  }

  void update() {
    pos.add(vel);
  }
  
  void bounce() {
    if(pos.y> height){
      vel.y = vel.y * -1;  
    }
    if(pos.y < 0) {
       vel.y = vel.y * -1;
    }
    if(pos.x > width) {
      vel.x = vel.x * -1;
    }
    if(pos.x < 0){
      vel.x = vel.x * -1;
    }
  }
}