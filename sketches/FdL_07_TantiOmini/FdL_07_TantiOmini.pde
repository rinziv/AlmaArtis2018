
// Dichiarazione array
OminoDiNeve[] omini;



void setup() {
  size(400, 400);
  // inizializzazione
  omini = new OminoDiNeve[40];
  
  for(int i = 0 ; i < omini.length ; i++){
    omini[i] = new OminoDiNeve(
      random(width), random(height),
      random(20, 40), random(-3, 3), random(-3, 3) 
     );
  }
}

void draw() {
  background(200);
  for(int i=0; i < omini.length; i++){
     omini[i].display();
     omini[i].move();
     omini[i].bounce();
  }
}