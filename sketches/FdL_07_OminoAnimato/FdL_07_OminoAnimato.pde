int x = 25;
int y = 100;
int speedx = 1;
int speedy = 2;

void setup(){
 size(400,400); 
}

void drawSnowman(int x, int y, int r){
  fill(255);  
  line(x,y,x+r*1.5, y-r/2);
  line(x,y,x-r*1.5, y-r/2);
  ellipse(x,y-r-r/2,r/1.5*2,r/1.5*2);
  ellipse(x,y,r*2,r*2);
  fill(0);
  ellipse(x,y,r/5,r/5);
  ellipse(x,y-r/3,r/5,r/5);
  ellipse(x,y+r/3,r/5,r/5); 
  ellipse(x-r/3,y-r-r/2,r/10,r/10);
  ellipse(x+r/3, y-r-r/2,r/10,r/10);
}


void move(){
  x = x + speedx;
  y = y + speedy;
}

void bounce(){
  if( x < 0 || x > width){
     speedx = speedx * -1; 
  }
  if( y < 0 || y > height){
     speedy = speedy * -1; 
  }
}

void draw(){
  background(200);
  drawSnowman(x,y,20);
  move();
  bounce();
}