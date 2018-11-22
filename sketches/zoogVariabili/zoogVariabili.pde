

void setup(){
 size(600,200); 
}


void draw(){
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  // corpo
  stroke(0,128,0);
  fill(200,255,200);
  rect(mouseX,120,30,80);

  // testa
  fill(255);
  ellipse(mouseX, 50 , 80,80);
  
  // occhi
  fill(255);
  ellipse(mouseX - 20,50, 30,50);
  ellipse(mouseX + 20,50, 30,50);
  fill(0,128,0);
  ellipse(mouseX - 20,50 + 10, 10,20);
  ellipse(mouseX + 20,50 + 10, 10,20);
  
  // gambe
  int lunghezzaGambe = 30;
  line(mouseX + 15,160, mouseX + 15 + lunghezzaGambe, 160 + lunghezzaGambe);
  line(mouseX -15 , 160, mouseX - 15 - lunghezzaGambe, 160 + lunghezzaGambe);
}