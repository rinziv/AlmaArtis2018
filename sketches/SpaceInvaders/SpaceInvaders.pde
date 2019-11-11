Spaceship ss;
Rocket[] rockets = new Rocket[10]; // ci possono essere al massimo 10 spari visibili
                                // basta aumentare il numero per avere più spari possibili

void setup(){
  size(400,800);
  ss = new Spaceship();
  for(int i = 0; i < rockets.length; i++){
   rockets[i] = new Rocket(0,0); 
  }
}


void draw() {
  background(51);
  // disegno tuttgli spari eventualmente attivi
  for(int i = 0; i < rockets.length; i++){
   if(rockets[i].isActive){
    rockets[i].show();
    rockets[i].update();
   }
  }
  // disegno l'astronave
  ss.show();
}

void keyPressed(){
 if(keyCode ==LEFT){
   ss.move(-2); 
 }
 if(keyCode == RIGHT){
   ss.move(+2);
 }
 
 if(keyCode == UP){
   sparo(); 
 }
   
}


void sparo(){
  // scegliere uno degli spari non attivi
  for(int i = 0; i < rockets.length; i++){
   if(!rockets[i].isActive){
     // se lo sparo corrente non è attivo si rilancia
     // dalla posizione della navicella
     rockets[i].relaunch(ss.x, ss.y);
     // la seguente istruzione interrompe il ciclo for: non abbiamo più bisogno di controllare il resto dell'array
     break;
   }
  }
  // se non si trova nessun razzo inattivo, non si fa nulla e non si spara
  
}