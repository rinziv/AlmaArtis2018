int posX;



void setup() {
  // Example 2-1: Zoog again
  size(480, 255);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  
  posX = 300;
}

void draw() {
  background(255);
  posX = mouseX;
  // Body
  int brightness = mouseY;
  stroke(0);
  fill(brightness);
  rect(posX, 145, 20, 100);

  // Head
  fill(255);
  ellipse(posX, 115, 60, 60); 

  // Eyes
  fill(0); 
  ellipse(posX-19, 115, 16, 32); 
  ellipse(posX+19, 115, 16, 32);

  // Legs
  stroke(0);
  line(posX-10, 195, posX-20, 205);
  line(posX+10, 195, posX+20, 205);
  
  println(frameCount);
}