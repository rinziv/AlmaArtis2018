void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  fill(128, 150);
  //ellipse(width/2, height/2, width, height);

  
  for(float offset = 0; offset < width/2; offset = offset + 10  ){
    ellipse(width/2, height/2, 
      width - offset*2, height - offset*2);
  }
}