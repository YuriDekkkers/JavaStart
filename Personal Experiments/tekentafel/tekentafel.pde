import controlP5.*;

ControlP5 cp;

Textfield Redgb;
Textfield rGreenb;
Textfield rgBlue;

Textfield bSize;

Button Wipescreen;

int x;
int y;

void setup(){
  size(800,800);
  background(255,255,255);
  fill(0,0,0);
  
  cp = new ControlP5(this);
  
  Wipescreen = cp.addButton("wipe")
  .setSize(50,30)
  .setPosition(20,20);
}

void draw(){

}

void mouseDragged(){
  ellipse(x,y,20,20);
  x = mouseX;
  y = mouseY;
}

void wipe(){
  background(255,255,255);
}
