class Ciambella{
  // 1. dati
  float R;
  float r;
  
  float alpha;
  float beta;
  
  // 2. setup
  Ciambella(float cR, float er){
    R = cR;
    r = er;
    alpha = 0;
    beta = 0;
  }
  
  // 3. funzioni
  void show(){
    rotate(alpha);
    translate(R, 0);
    noFill();
    rotate(beta);
    ellipse(0, 0, 2*r, r);
  }
  
  void update(){
    alpha = alpha + PI/180;
    beta = beta + PI/60;
  }
  
  void bounce(){
    if(alpha > 2*PI){
     noLoop(); 
    }
  }
  
}