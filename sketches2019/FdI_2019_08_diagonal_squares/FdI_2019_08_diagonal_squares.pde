void setup(){
  size(400,400); 
}


void draw(){
  
  for(int i = 0; i < 25; i++){
     fill(255 - i*10);
     rect(10+i*10,10+i*10,50,50); 
  } 
  noLoop();
}