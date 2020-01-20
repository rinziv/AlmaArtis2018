Ciambella ciambella;

void setup(){
  size(400,400); 
  ciambella = new Ciambella(150, 30);
  
  background(255);
}


void draw(){
  translate(width/2, height/2);
  ciambella.show();
  ciambella.update();
  ciambella.bounce();
}