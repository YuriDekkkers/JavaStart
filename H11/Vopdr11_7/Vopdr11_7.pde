import controlP5.*;

ControlP5 cp;

Textfield typeNames;
Button addName;

String[] nameArray = new String[10];

int Clicked = 0;
int x = 0;

void setup(){
  size(400,400);
  background(0,0,0);
  textSize(20);
  
  cp = new ControlP5(this);
  
  typeNames = cp.addTextfield("type name")
  .setSize(350,30).setPosition(25,20);
  
  addName = cp.addButton("addname")
  .setSize(100,40).setPosition(150,60);
}

void draw(){}



void addname(){
  
  nameArray[x]=typeNames.getText();
  Clicked++;
  x++;
  if(x>=10){
    x=9;
  }
  
  if(Clicked==10){
    text(nameArray[0],110,120);
    text(nameArray[1],110,150);
    text(nameArray[2],110,180);
    text(nameArray[3],110,210);
    text(nameArray[4],110,240);
    text(nameArray[5],110,270);
    text(nameArray[6],110,300);
    text(nameArray[7],110,330);
    text(nameArray[8],110,360);
    text(nameArray[9],110,390);
    addName.hide();
  }
}
