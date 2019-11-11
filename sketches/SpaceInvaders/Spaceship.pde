class Spaceship{
   int w = 20;
   int h = 40;
   int x = width/2;
   int y = height - h;   
   
   void show(){
     fill(100,250,100);
     rectMode(CENTER);
     rect(x, y, w, h);
   }
   
   void move(int dir){
     // dir può assumere valori negatici verso sinistra, positivi verso destra
     x += dir;
     if(x < w/2) // controllo che non esca dal lato sinistro
       x = w/2;
       
     if(x > width - w/2) // controllo che non esca dal lato destro
       x = width - w/2;
   }
  
}