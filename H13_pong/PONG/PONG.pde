/* to do list

some variables.
ballX
ballY

Paddle1Y

Paddle2Y

other stuff to do.
point score system

menu screen 1p 2p
-2p standard = on
-disable second player when clicked on the 1p button
  -activate automatic paddle movement

highscore tracker
this will be pretty much useless since the game doesnt save verytime you restart the program

make it look good
-not just squares and circles

sounds and maybe music
-ball bounce
-point ding
-win jingle
-lose jingle (single plyer only)
*/
import controlP5.*;

ControlP5 cp;

Button P1;
Button P2;

int ballX;
int ballY;

int paddle1Y;
int paddle2Y;

boolean single = false;

int score1;
int score2;

int[] scoreArray;

void setup(){
  size(1000,500);
  background(0,0,0);
  
  cp = new ControlP5(this);
  
  //logo
  stroke(255,255,255);
  strokeWeight(3);
  fill(0,0,0);
  rect(10,10,980,480,40);
  rect(250,75,500,200,10);
  
  fill(255,255,255);
  stroke(255,255,255);
  rect(260,95,480,160);
  
  stroke(0,0,0);       
  for(int i = 0; i < 16; i++){
    line(i*32+260,95,i*32+260,255);
  }
  
  for(int i = 0; i < 6; i++){
    line(260,i*32+95,740,i*32+95);
  }
  
  fill(0,0,0);
  rect(292,191,96,64);
  rect(292,127,32,32);
  rect(356,95,32,96);
  rect(420,127,32,96);
  rect(484,95,32,160);
  rect(548,127,32,128);
  rect(612,95,32,160);
  rect(676,159,32,64);
  rect(676,127,64,32);
  
  //buttons
  stroke(255,255,255);
  rect(275,300,200,75);
  P1 = cp.addButton("singlePlayer")
         .setSize(200,75)
         .setPosition(275,300)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
         
  rect(525,300,200,75);
  P2 = cp.addButton("Two Players")
         .setSize(200,75)
         .setPosition(525,300)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
}

void draw(){
  
}
