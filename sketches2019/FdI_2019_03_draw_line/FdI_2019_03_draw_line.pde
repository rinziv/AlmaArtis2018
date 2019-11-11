void setup(){
  size(400,400);  
}

void draw(){
  stroke(0);
  //point(mouseX, mouseY);
  strokeWeight(dist(pmouseX, pmouseY, mouseX, mouseY));
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  ;
}