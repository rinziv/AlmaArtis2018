float circleX = 200;
float circleY = 26;
float circleR = 50;
float vy = +1;

void setup(){
  size(400,400);
}

void draw() {
  background(255);
  
  //show
  ellipse(circleX,circleY,circleR,circleR);
  //update
  //circleX = circleX + 2;
  circleY = circleY + 10 * vy;
  //circleR = circleR + 1;
  // bounce
  if (circleX > width - circleR/2){
   circleX = width - circleR/2; 
  }
  //circleY = constrain(circleY,0,height-circleR/2);
  if (circleY > height -circleR/2){
    vy = vy * -1;
  }
  if (circleY < 0 + circleR/2) {
    vy = vy * -1; 
  }
  
  
  
  
  
}