class Rocket{
  int x;
  int y;
  boolean isActive = false; // controlla se il missile si muove e deve essere disegnato. Inizialmente è false
  int vel = 5;  // controlla la velocità del missile
  
  Rocket(int _x, int _y){
    // _x e _y sono le coordinate dell'astronave quando viene sparato
    // la x non verrà più modificata
    // la y diminuisce fino a scomparire dalla schermo. Quando scompare, il valore di isActive diventa false
    x = _x;
    y = _y;
  }
  
  
  void show(){
    fill(100, 200, 200);
    ellipseMode(CENTER);
    ellipse(x, y, 5, 5);
  }
  
  void update(){
      y = y - vel;
      if (y < -5) // il missile scompare della vista
        isActive = false; // da ora in poi non viene più disegnato
  }
  
  void relaunch(int _x, int _y){
   x = _x;
   y = _y;
   isActive = true; // si riattiva il missile;
  }
}