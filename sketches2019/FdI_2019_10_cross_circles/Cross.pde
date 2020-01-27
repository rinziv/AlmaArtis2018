class Cross{
 float R;
 float alpha;
 
 
 Cross(float cR){
   R = cR;
 }
 
 void show(){
   noFill();
   rotate(alpha);
   translate(R/2,0);
   for(int i = 0; i<15; i++){
    ellipse(0,0,R,R);
        translate(15,0);
   }
 }
 
 void update(){
   alpha =  alpha + PI/10;
 }
  
 void bounce(){
  if (alpha > 2*PI){
    noLoop();
  }
 }
  
}