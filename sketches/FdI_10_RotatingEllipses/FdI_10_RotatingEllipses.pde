int R=200;
int r=60;
int n=360;
float angle=0;
void setup() {
  size(600, 600);
}
void draw() {
  translate(width/2, height/2);
  //rotate(angle);
  angle+=0.01;
  background(0);
  colorMode(HSB);
  noFill();
  for (int i=0; i<n; i++) {
    pushMatrix();
    translate(R, 0);
    rotate(angle);
    rotate(i*PI/(n/10));
    stroke(i*255/n,200,255);
    ellipse(0, 0, r, r/2);
    popMatrix();
    rotate(2*PI/n);
  }
}