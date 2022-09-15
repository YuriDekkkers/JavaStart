boolean Draw;
int x1;
int y1;
int x2;
int y2;
void setup(){
  size(600,600);
  background(255,255,255);
}

void draw(){
  x2 = mouseX;
  y2 = mouseY;

  line(x1,y1,x2,y2);
}

void mouseClicked(){
  if(Draw){
    x1 = mouseX;
    y1 = mouseY;
    Draw = false;
  }else if(!Draw){
    Draw = true;
  }
}
