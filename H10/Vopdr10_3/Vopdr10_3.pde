import controlP5.*;

ControlP5 cp;

Textfield TF1;
Textfield TF2;
Button Plus;


float Nb1;
String Input1;

void setup(){
  size(400,400);
  background(0,0,0);
  textSize(20);
    
  cp = new ControlP5(this);
  
  //button setups
  TF1 = cp.addTextfield("+ btw")
          .setSize(160,60)
          .setPosition(60,100);
                 
  Plus = cp.addButton("plus")
           .setSize(80,60)
           .setPosition(240,100);
 
  //extra stuff
  fill(0,80,180);
  stroke(0,100,150);
  rect(100,190,190,40);

}

void draw(){

}

//calculation buttons
void plus(){
  Input1 = TF1.getText();
  Nb1 = float(Input1);
  
  fill(0,80,180);
  stroke(0,100,150);
  rect(100,190,190,40);
  fill(255,255,255);
  text("€" + (Nb1 * 1.21),110,220);
}
