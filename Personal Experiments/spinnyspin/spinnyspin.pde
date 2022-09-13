float x = 0;

void setup(){
  size(400,400);
  frameRate(30);
}

void draw(){
  fill(255,255,255);
  ellipse(200,200,150,150);
  fill(200,0,0);
  arc(200,200,150,150,0.9*PI+x,1.1*PI+x);
  arc(200,200,150,150,1.9*PI+x,2.1*PI+x);
  x+=0.1;
}
