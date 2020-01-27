Car[] cars = new Car[10];

MiddleLine ml;


void setup() {
  size(800, 200);
  for(int i = 0; i < cars.length; i ++){
    cars[i] = new Car(i*80, color(250, random(255), random(255)), 50);
  }
    
  ml = new MiddleLine();
}


void draw() {
  background(160);
  rectMode(CENTER);
  for(int i = 0; i < cars.length; i ++){
    cars[i].show();
    cars[i].update();
    cars[i].bounce();
  }
  
  ml.show();
  ml.update();
  ml.bounce();
}