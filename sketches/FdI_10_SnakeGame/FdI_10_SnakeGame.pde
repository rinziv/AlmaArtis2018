int sz=10;
Snake snake;

void setup() {
  size(600, 600);
  snake=new Snake();
  frameRate(30);
}


void draw() {
  background(0);
  snake.show();
  snake.update();
}

void keyPressed() {
  if (keyCode==UP) {
    snake.changeDirection(0, -1);
  } else if (keyCode==DOWN) {
    snake.changeDirection(0, 1);
  } else if (keyCode==LEFT) {
    snake.changeDirection(-1, 0);
  } else if (keyCode==RIGHT) {
    snake.changeDirection(1, 0);
  }
}