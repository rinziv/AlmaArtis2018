OminoDiNeve omino;
OminoDiNeve omino2;



void setup() {
  size(400, 400); 
  omino = new OminoDiNeve(25, 25, 25, 1, 1);
  omino2 = new OminoDiNeve(width - 25, height -25, 40, 2, -2);
}

void draw() {
  background(200);
  omino.display();
  omino.move();
  omino.bounce();

  omino2.display();
  omino2.move();
  omino2.bounce();
}