

void setup(){
  size(400,400);
  
}

void draw(){
  background(0,250,250);
  fill(200,0,0);
  muur(0,250,400,150);
}

void muur (int x, int y, int w, int h){
  rect(x,y,w,h);
}
