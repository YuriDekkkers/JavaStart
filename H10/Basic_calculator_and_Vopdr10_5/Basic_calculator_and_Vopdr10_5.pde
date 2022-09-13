import controlP5.*;

ControlP5 cp;

Textfield TF1;
Textfield TF2;
Button Plus;
Button Minus;
Button Multiply;
Button Divide;

float Nb1;
float Nb2;
String Input1;
String Input2;

void setup(){
  size(400,200);
  background(0,0,0);
  
  cp = new ControlP5(this);
  
  //button setups
  TF1 = cp.addTextfield("Number 1")
          .setSize(80,30)
          .setPosition(50,50);
          
  TF2 = cp.addTextfield("Number 2")
          .setSize(80,30)
          .setPosition(50,110);
          
  Plus = cp.addButton("plus")
           .setSize(50,25)
           .setPosition(160,40);
  
  Minus = cp.addButton("minus")
           .setSize(50,25)
           .setPosition(160,67);
           
  Multiply = cp.addButton("multiply")
           .setSize(50,25)
           .setPosition(160,94);
  
  Divide = cp.addButton("divide")
           .setSize(50,25)
           .setPosition(160,121);
           
  //extra stuff
  fill(0,80,180);
  stroke(0,100,150);
  rect(290,85,85,20);
  
}

void draw(){

}

//calculation buttons
void plus(){
  Input1 = TF1.getText();
  Input2 = TF2.getText();
  Nb1 = float(Input1);
  Nb2 = float(Input2);
  
  fill(0,80,180);
  stroke(0,100,150);
  rect(290,85,85,20);
  fill(255,255,255);
  text((Nb1 + Nb2),300,95);
}

void minus(){
  Input1 = TF1.getText();
  Input2 = TF2.getText();
  Nb1 = float(Input1);
  Nb2 = float(Input2);
  
  fill(0,80,180);
  stroke(0,100,150);
  rect(290,85,85,20);
  fill(255,255,255);
  text((Nb1 - Nb2),300,95);
}

void multiply(){
  Input1 = TF1.getText();
  Input2 = TF2.getText();
  Nb1 = float(Input1);
  Nb2 = float(Input2);
  
  fill(0,80,180);
  stroke(0,100,150);
  rect(290,85,85,20);
  fill(255,255,255);
  text((Nb1 * Nb2),300,95);
}

void divide(){
  Input1 = TF1.getText();
  Input2 = TF2.getText();
  Nb1 = float(Input1);
  Nb2 = float(Input2);
  
  fill(0,80,180);
  stroke(0,100,150);
  rect(290,85,85,20);
  fill(255,255,255);
  text((Nb1 / Nb2),300,95);
}
