int w = 20;

void setup() {
  size(400, 400);
}


void draw() {
  background(255);
  noStroke();
  colorMode(HSB);

  //for (int j = 0; j < height/w; j++) {
  //  for (int i = 0; i < width/w; i++) {
  //    fill(random(255));
  //    rect(i * w, j * w , w, w );
  //  }
  //}

  for (int l = 0; l < (width/w)*(height/w); l++) {
    int j = l / (width/w);
    int i = l % (width/w);
    fill(random(255),255,255);
    rect(i * w, j * w, w, w );
  }

  noLoop();
}