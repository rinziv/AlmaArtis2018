int circleX = 0;
int circleY = 100;
int offset = 5;

void setup(){
  size(400,400);
  ellipseMode(CENTER);
}


void draw(){
    background(255);
    stroke(0);
    fill(127);
    ellipse(circleX, circleY, 50,50);
    
    circleX = circleX + offset;
    
    // il mio cerchio non toca la parete destra
    if(circleX + 25 >= 400){
      offset = -1;
    }
    if(circleX - 25 <= 0){
      offset = +1;
    }
}