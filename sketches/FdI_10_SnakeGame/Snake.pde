class Snake {
  PVector[] pos =new PVector[5];
  int dirX = 0;
  int dirY = -1;
  Snake () {
    for (int i=0; i<pos.length; i++) {
      pos[i]=new PVector(sz*i, 100);
    }
  }

  void show() {
    for (int i=0; i<pos.length; i++) {
      rect(pos[i].x, pos[i].y, sz, sz);
    }
  }

  void update() {
    for (int i=1; i<pos.length; i++) {
      pos[i-1]=pos[i];
    }
    PVector head = pos[pos.length-1];
    float x=head.x+dirX*sz;
    float y=head.y+dirY*sz;
    if (x>width) {
      x=0;
    } else if (x<0){
     x=width-sz; 
    }else if(y<0){
     y=height-sz; 
    } else if(y>height) {
     y=0; 
    }
    
    pos[pos.length-1]=new PVector(x,y);
  }
  
  void changeDirection(int _dirX, int _dirY){
    dirX = _dirX;
    dirY = _dirY;
  }
}