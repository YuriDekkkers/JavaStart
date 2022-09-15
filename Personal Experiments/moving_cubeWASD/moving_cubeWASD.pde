int x;
int y;

void setup(){
  size(400,400);
  frameRate(120);
}

void draw(){}

void keyPressed(){
  rect(x,y,20,20);
  
  if(key == 'd'){
    x+=5;
  }
  if(key == 'a'){
    x-=5;
  }
  if(key == 'w'){
    y-=5;
  }
  if(key == 's'){
    y+=5;
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
