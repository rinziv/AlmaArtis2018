void setup(){
  size(400,400);
}

void draw(){
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // corpo
  fill(150);
  rect(mouseX, mouseY, 20, 100);
  // testa
  fill(255);
  ellipse(mouseX , mouseY - 30, 60, 60);
  // occhi
  fill(0);
  ellipse(mouseX - 17 ,mouseY - 30, 16,32);
  ellipse(mouseX + 17  ,mouseY  - 30, 16,32);
   
  // gambe
  line(mouseX + 10,      mouseY + 50, 
       mouseX + 10 + 20, mouseY + 50 + 20);
  line(mouseX - 10,      mouseY + 50, 
       mouseX - 10 - 20, mouseY + 50 + 20);
}