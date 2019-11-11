float cx = 200;
float cy = 200;
float d = 50;

void setup(){
  size(400,400);
}

void draw(){
  //background(255);
  // show
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(cx, cy, d, d);
  
  // update
  cx = random(width);
  cy = random(height);
  d = random(50);
}