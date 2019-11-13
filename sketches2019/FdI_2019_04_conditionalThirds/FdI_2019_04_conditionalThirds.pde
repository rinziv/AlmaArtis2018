void setup(){
  size(400,400);
}

void draw(){
  if(mouseX < width /3){
    background(255);  
  }else if (mouseX < width *2/3){
    background(128);
  }else{
    background(0); 
  }
  
  stroke(100);
  line(width/3, 0, width/3, height);
  line(width*2/3, 0, width*2/3, height);
}