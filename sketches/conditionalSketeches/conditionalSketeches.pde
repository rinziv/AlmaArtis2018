void setup(){
 size(400,400); 
}


void draw(){
  if( mouseX < width /3){
     background(255); 
  }else if(mouseX < 2 * width/3){
    background(180);
  }else{
    background(0);
  }
}