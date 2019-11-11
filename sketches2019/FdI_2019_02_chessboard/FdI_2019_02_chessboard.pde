void setup(){
  size(400,300);  
}


void draw(){
  background(255);
  fill(0);
  rect(0,0,width/2, height/2);
  fill(128);
  rect(width/2, height/2, width/2, height/2);
  noFill();
  rect(0,0, width,height);
  //background(255);
}