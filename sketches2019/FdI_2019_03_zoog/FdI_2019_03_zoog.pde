void setup(){
  size(400,400);
}

void draw(){
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // corpo
  fill(150);
  rect(width / 2, height / 2, 20, 100);
  // testa
  fill(255);
  ellipse(width /2 , height / 2 - 30, 60, 60);
  // occhi
  fill(0);
  ellipse(width / 2 - 17 ,height / 2 - 30, 16,32);
  ellipse(width / 2 + 17  ,height / 2  - 30, 16,32);
   
  // gambe
  line(width / 2 + 10,      height / 2 + 50, 
       width / 2 + 10 + 20, height / 2 + 50 + 20);
  line(width / 2 - 10,      height / 2 + 50, 
       width / 2 - 10 - 20, height / 2 + 50 + 20);
}