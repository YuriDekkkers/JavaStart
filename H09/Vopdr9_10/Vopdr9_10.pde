int x = 0;
int y = 0;
int Xshift = 0;

void setup(){
  size(500,500);
  background(0,255,255);
}

void draw(){
  for(int j = 1; j < 3; j++){
    for(int i = 0; i < 6; i++){
      fill(150,255,0);
      rect(x + -30+Xshift,y+300,40,60);
      triangle(-40+x+Xshift,300+y,20+x+Xshift,300+y,-10+x+Xshift,150+y);
      x+=100;
    }
    y+=50;
    x = 0;
    if(j % 2 == 1){
      Xshift = 50;
    }else{
      Xshift = 0;
    }
  }
}
