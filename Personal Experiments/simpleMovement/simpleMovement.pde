int x;
int y;
int gravity = -2;
int  speed = 0;

boolean augh;
boolean ough;


void setup(){
  background(255,255,255);
  size(800,400);
  frameRate(60);
}

void draw(){
  speed = speed + gravity;
  y = y - speed;
  
  if(y > 300){
    y = 300;
  }
  
  println(speed);
  
  background(0,0,0);
  rect(-10,330,820,80);
  rect(x+30,y,50,50);
  
  if(augh == true){
    x+=7;
  }
  if(ough == true){
    x-=7;
  }
}

void keyPressed(){
  if(keyCode == 32 && y >= 300){
    speed = 30;
  }
  
  if(key == 'd'){
    augh = true;
  }
  if(key == 'a'){
    ough = true;
  }
}

void keyReleased(){
  if(key == 'd'){
    augh = false;
  }
  if(key == 'a'){
    ough = false;
  }
}
