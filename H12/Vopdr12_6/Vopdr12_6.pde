int x = 0;
int y = 0;

int x1;
int y1;


void setup(){
  size(400,400);
}

void draw(){
  background(255,255,255);
  rect(x+130,y+190,20,20);
  rect(x1+250,y1+190,20,20);
  println(keyCode);
}

void keyPressed(){
  if(key == 'w'){
    y-=10;
  }
  if(key == 'a'){
    x-=10;
  }
  if(key == 's'){
    y+=10;
  }
  if(key == 'd'){
    x+=10;
  }
  
  if(keyCode == 38){
    y1-=10;
  }
  if(keyCode == 37){
    x1-=10;
  }
  if(keyCode == 40){
    y1+=10;
  }
  if(keyCode == 39){
    x1+=10;
  }
}
