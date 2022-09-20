int x;
int y;
int S =30;

void setup(){
  size(400,400);
  frameRate(120);
}

void draw(){}

void keyReleased(){
  background(255,255,255);
  rect(x,y,20,20);
  
  if(key == 'd'){
    x+=S;
  }
  if(key == 'a'){
    x-=S;
  }
  if(key == 'w'){
    y-=S;
  }
  if(key == 's'){
    y+=S;
  }
  
  if(x < -20){
    x = 400;
  }else if(x > 400){
    x = -20;
  }
  if(y < -20){
    y = 400;
  }else if(y > 400){
    y = -20;
  }
}
