boolean x = true;
boolean y = true;
int Dix = 1;
int Diy = 1;

float a = 255;
float b = 255;
float c = 255;

void setup(){
size(500,400);
background(255,255,255);
}

void draw(){
  background(0,0,0);
  fill(a,b,c);
  stroke(255,255,255);
  strokeWeight(2);
  ellipse(Dix,Diy,100,50);
  
  //distance for x
  if(Dix < 450 && x == true){
    Dix++;
  }else{
    Dix--;
  }
  if(Dix >= 450){
    x = false;
      a = random(0,255);
      b = random(0,255);
      c = random(0,255);
  }
  if(Dix <= 50){
    x = true;
      a = random(0,255);
      b = random(0,255);
      c = random(0,255);
  }
  
  //distance for y
  if(Diy < 375 && y == true){
    Diy++;
  }else{
    Diy--;
  }
  if(Diy >= 375){
    y = false;
      a = random(0,255);
      b = random(0,255);
      c = random(0,255);
  }
  if(Diy <= 25){
    y = true;
      a = random(0,255);
      b = random(0,255);
      c = random(0,255);
  }
}
