

void setup(){
  size(400,400);
  
}

void draw(){
  background(250,250,250);
  fill(200,0,0);
  drawTriangle(20,250,300,150,100,75);
}

void drawTriangle (int x1, int y1, int x2, int y2, int x3, int y3){
  line(x1,y1,x2,y2);
  line(x2,y2,x3,y3);
  line(x3,y3,x1,y1);
}
