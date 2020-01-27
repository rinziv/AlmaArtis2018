float[] numbers = new float[200];

void setup(){
  for(int i = 0; i < numbers.length  ; i++ ){
    numbers[i] = random(10, 100);
  }
}


void addTens(){
  for(int i = 0; i < numbers.length  ; i++ ){
    numbers[i] = numbers[i] + random(0, 10) ;
  }
}

void draw(){
   for(int i = 0; i < numbers.length; i++){
     numbers[i] = numbers[i] * numbers[i]; 
   }
  
  
  noLoop();
}