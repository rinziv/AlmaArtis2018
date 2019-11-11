Cactus[] c;
Nuvoletta [] e;
Dinosauro f;
void setup() {
  size(600, 200);
  c=new Cactus[6];
  for (int i=0; i<c.length; i++) {
    c[i]=new Cactus();
  }

  e=new Nuvoletta [3];
  for (int i=0; i<e.length; i++) {
    e[i]=new Nuvoletta();
  }
  f=new Dinosauro();
}


void draw() {
  background(255); 
  stroke(0); 
  line(0, 150, width, 150); 
  for (int i=0; i<c.length; i++) {
    c[i].show();
    c[i].update();
  }
  for (int i=0; i<e.length; i++) {
    e[i].show();
    e[i].update();
  }
  f.show();
  f.update();
}
void keyPressed() {
  if(keyCode==UP){
    f.jump();
  }
}