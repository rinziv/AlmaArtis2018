
void setup(){
 size(200,200);
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

void draw(){
  background(255);
  drawSnowman(100,125,50);
  //drawSnowman(130,150,25);
  //drawSnowman(70,100,25);
}