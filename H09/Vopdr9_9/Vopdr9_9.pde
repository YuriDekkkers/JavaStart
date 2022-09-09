

void setup(){
  size(400,400);
  
}

void draw(){
  background(250,250,250);
  drawStem(180,300,40,100);
  drawTree(140,300,260,300,200,75);
}

void drawTree (int x1, int y1, int x2, int y2, int x3, int y3){
  triangle(x1,y1,x2,y2,x3,y3);
}

void drawStem (int x, int y, int w, int h){
  rect(x,y,w,h);
}
