Cross cross;

void setup(){
  size(600,600);
  cross = new Cross(100);
  
  background(255);
}



void draw() {
  translate(width/2,height/2);
  cross.show();
  cross.update();
  cross.bounce();
}