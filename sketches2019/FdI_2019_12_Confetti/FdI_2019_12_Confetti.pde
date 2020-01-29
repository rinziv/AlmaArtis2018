Coriandolo[] coriandoli = new Coriandolo[1000];


void setup(){
  size(600,600);
  for(int i=0; i < coriandoli.length; i++){
    coriandoli[i] = new Coriandolo();
  }
}

void draw(){
  background(255);
  for(int i=0; i < coriandoli.length; i++){
    coriandoli[i].show();
    coriandoli[i].update();
    coriandoli[i].bounce();
  }
  
}