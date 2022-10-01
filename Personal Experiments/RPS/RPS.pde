import controlP5.*;

Button rock;
Button paper;
Button scissors;

ControlP5 cp;

int Comp;
int player;

void setup(){
  cp = new ControlP5(this);
  size(400,200);
  background(255,150,0);
  textSize(20);
  
  rock = cp.addButton("Rock").setSize(100,40).setPosition(30,130);
  paper = cp.addButton("Paper").setSize(100,40).setPosition(145,130);
  scissors = cp.addButton("Scissors").setSize(100,40).setPosition(260,130);
}

void draw(){
  if(Comp == player){text("tie",180,100);}
  if(Comp == 1 && player == 2){text("PLayer wins",180,100);}
  if(Comp == 1 && player == 3){text("Comp wins",180,100);}
  if(Comp == 2 && player == 1){text("Comp wins",180,100);}
  if(Comp == 2 && player == 3){text("Player wins",180,100);}
  if(Comp == 3 && player == 1){text("Player wins",180,100);}
  if(Comp == 3 && player == 2){text("Comp wins",180,100);}
}

void Rock(){
  Comp = floor(random(1,3.99));
  player = 1;
  background(255,150,0);
  if(Comp == 1){
    text("Rock",170,30);
  }else
  if(Comp == 2){
    text("Paper",170,30);
  }else
  if(Comp == 3){
    text("Scisssors",170,30);
  }
}
void Paper(){
  Comp = floor(random(1,3.99));
  player = 2;
  background(255,150,0);
  if(Comp == 1){
    text("Rock",170,30);
  }else
  if(Comp == 2){
    text("Paper",170,30);
  }else
  if(Comp == 3){
    text("Scisssors",170,30);
  }
}
void Scissors(){
  Comp = floor(random(1,3.5));
  player = 3;
  background(255,150,0);
  if(Comp == 1){
    text("Rock",170,30);
  }else
  if(Comp == 2){
    text("Paper",170,30);
  }else
  if(Comp == 3){
    text("Scisssors",170,30);
  }
}
