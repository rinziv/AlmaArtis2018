int posX = 200;
int offset = 1;

void setup(){
 size(600,200); 
}

void corpo(int x){
  stroke(0,128,0);
  fill(200,255,200);
  rect(x,120,30,80);
}

void testa(int x){
  fill(255);
  ellipse(x, 50 , 80,80);
}

void occhi(int x){
  fill(255);
  ellipse(x - 20,50, 30,50);
  ellipse(x + 20,50, 30,50);
  fill(0,128,0);
  ellipse(x - 20,50 + 10, 10,20);
  ellipse(x + 20,50 + 10, 10,20);
}

void gambe(int x){
  int lunghezzaGambe = 30;
  line(x + 15,160, x + 15 + lunghezzaGambe, 160 + lunghezzaGambe);
  line(x -15 , 160, x - 15 - lunghezzaGambe, 160 + lunghezzaGambe);
}

void disegna(){
  corpo(posX);
  testa(posX); 
  occhi(posX);
  gambe(posX);
}

void move(){
   posX = posX + offset; 
}

void bounce(){
 if(posX >= width){
  offset = -1; 
 }
 
 if(posX <= 0){
  offset = 1; 
 }
}

void draw(){
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  
  
  disegna();
  move();
  bounce();
  
}