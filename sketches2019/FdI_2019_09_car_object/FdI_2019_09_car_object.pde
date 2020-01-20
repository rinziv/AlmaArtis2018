Car car1;
Car car2;
Car car3;

MiddleLine ml;


void setup() {
  size(800, 200);
  car1 = new Car(400, color(250,150,150), 50);
  car2 = new Car(500, color(150, 250,150), 50);
  car3 = new Car(680, color(150,150,250), 150);
  
  ml = new MiddleLine();
}


void draw() {
  background(160);
  rectMode(CENTER);

  car1.show();
  car1.update();
  car1.bounce();
  
  car2.show();
  car2.update();
  car2.bounce();
  
  car3.show();
  car3.update();
  car3.bounce();
  
  ml.show();
  ml.update();
  ml.bounce();
}