int Draw = 1;
int x1;
int y1;
int x2;
int y2;
void setup(){
  size(600,600);
  background(255,255,255);
}

void draw(){

  line(x1,y1,x2,y2);

}

void mouseClicked(){
  switch(Draw){
    case 1:
      x1 = mouseX;
      y1 = mouseY;
      Draw = 2;
      break;
    case 2:
      x2 = mouseX;
      y2 = mouseY;
      Draw = 1;
      break;
    
  }
}
