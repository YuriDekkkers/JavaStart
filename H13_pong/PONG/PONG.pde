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
}

void draw(){
  
}
