float bx = 100;
float by = 100;

void setup(){
  size(400,400);
}


void drawBody(float bx, float by){
  // corpo
  fill(150);
  rect(bx, by, 20, 100);
}

void drawHead(float hx, float hy){
  // testa
  fill(255);
  ellipse(hx , hy - 30, 60, 60);
  // occhi
  fill(0);
  ellipse(hx - 17 ,hy - 30, 16,32);
  ellipse(hx + 17  ,hy  - 30, 16,32);
}

void drawLegs(float lx, float ly){
  // gambe
  line(lx + 10,      ly + 50, 
       lx + 10 + 20, ly + 50 + 20);
  line(lx - 10,      ly + 50, 
       lx - 10 - 20, ly + 50 + 20);
}

void show(float x, float y){
  // show
  drawBody(x, y);
  drawHead(x, y);
  drawLegs(x, y);
}

void update(){
  // update
  by = by + 0.5;
}


void draw(){
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  show(bx, by);
  update();
}