int circleX = 0;
int circleY = 100;
int offset = 50;

void setup() {
  size(400, 400);
  ellipseMode(CENTER);
  background(255);
  noLoop();
}

void draw() {
  stroke(0);
  fill(127);

  int number = 0;
  while (number < 10) {
    ellipse(circleX, circleY, 50, 50);
    circleX = circleX + offset;

    number = number + 1;
  };
}