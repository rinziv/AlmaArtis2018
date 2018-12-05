// Coordinate primo ominio
int x1 = 25;
int y1 = 100;

//Coordinate secondo omino
int x2 = 25;
int y2 = 100;

// Velocita primo omino
int speedx1 = 1;
int speedy1 = 2;

// Velocita secondo omino
int speedx2 = 2;
int speedy2 = 1;

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
  x1 = x1 + speedx1;
  y1 = y1 + speedy1;
  
  x2 = x2 + speedx2;
  y2 = y2 + speedy2;
}

void bounce(){
  if( x1 < 0 || x1 > width){
     speedx1 = speedx1 * -1; 
  }
  if( y1 < 0 || y1 > height){
     speedy1 = speedy1 * -1; 
  }
  if( x2 < 0 || x2 > width){
     speedx2 = speedx2 * -1; 
  }
  if( y2 < 0 || y2 > height){
     speedy2 = speedy2 * -1; 
  }
  
}

void draw(){
  background(200);
  drawSnowman(x1,y1,20);
  drawSnowman(x2,y2,20);
  move();
  bounce();
}