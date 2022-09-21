/* to do list

some variables.
ballX
ballY

Paddle1Y
-w,s

Paddle2Y
-up,down arrows

other stuff to do.
point score system

menu screen 1p 2p
-2p standard = on
-disable second player when clicked on the 1p button
  -activate automatic paddle movement

highscore tracker
this will be pretty much useless since the game doesnt save everytime you restart the program
joe bumgus

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
int countdown = 0;
int difCount = 0;
int Difficulty = 1;

int ballX = 500;
int ballY = 250;
boolean x;
boolean y;
int ballSpeed;
boolean hitable = true;

int paddle1Y = 0;
int paddle2Y = 0;

boolean single = false;
boolean gamestart = false;

int score1;
int score2;

boolean stupidw = false;
boolean stupids = false;
boolean stupidw2 = false;
boolean stupids2 = false;

int ApadS = 5;
int CompStrat;

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
  P2 = cp.addButton("MultiPlayer")
         .setSize(200,75)
         .setPosition(525,300)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
}

void draw(){
  //hitboxes paddles
  if(paddle1Y < 0){paddle1Y = 0;}
  if(paddle1Y > 349){paddle1Y = 349;}
  if(paddle2Y < 0 + CompStrat){paddle2Y = 0 + CompStrat;}
  if(paddle2Y > 349 - CompStrat){paddle2Y = 349 - CompStrat;}
  
  //on start to spawn all stuff
  ballSpeed = 6 + Difficulty;
  
  if(gamestart){
    background(0,0,0);
    difCount++;
    for(int i = 0; i < 69; i++){
      rect(495,0 + i*51,10,40);
    }
    countdown ++;
    fill(255,255,255);
    textSize(15);
    text("Difficulty : "+ Difficulty,10,490);
    textSize(50);
    text(score1,440,30);
    text(score2,530,30);
    fill(0,0,0);
    
    //paddle 1
    rect(30,paddle1Y,30,150,10);
    
    //paddle 2
    rect(940,paddle2Y,30,150,10);
    
    //B A L L
    ellipse(ballX,ballY,50,50);
  }
  
  //movement paddle 1
  if(stupidw == true){paddle1Y -= 10;}
  if(stupids == true){paddle1Y += 10;}
  
  //mocement paddle 2
  if(stupidw2 == true){paddle2Y -= 10;}
  if(stupids2 == true){paddle2Y += 10;}
  
  //movement ball
  if(countdown >= 180){
    if(ballX < 30 || ballX > 970){hitable = false;
    }else{
      hitable = true;
    }
    
    //x movement ball
      if(ballX > 500 && hitable){
        if(ballX >= 915 && (ballY >= (paddle2Y-15) && ballY <= (paddle2Y + 165))){
          x = false;
        }
      }
      
      if(ballX < 500 && hitable){
        if(ballX <= 85 && (ballY >= (paddle1Y-15) && ballY <= (paddle1Y + 165))){
          x = true;
        }
      }
      
      if(x == true){
        ballX+= ballSpeed;
      }else{
        ballX-=ballSpeed;
      }
      //y movement ball
      if(ballY < 475 && y == true){
        ballY+=ballSpeed;
      }else{
        ballY-=ballSpeed;
      }
      
      if(ballY >= 475){y = false;}
      if(ballY <= 25){y = true;}
    }
    
  if(difCount >= 1800){
    Difficulty ++;
    difCount = 0;
  }

  
  
  //auto paddle2 movement
  if(single){
    if((paddle2Y + 75) < ballY){
      paddle2Y+=ApadS;
    }else if((paddle2Y + 75) > ballY){
      paddle2Y-=ApadS;
    }
  }
  
  //difficulty increase
  if(Difficulty == 3){ApadS = 7;CompStrat = 20;}
  if(Difficulty == 6){ApadS = 9;CompStrat = 30;}
  if(Difficulty == 9){ApadS = 11;CompStrat = 40;}
  
  

  //point score counter
  if(ballX < -25){
    score2++;
    countdown = 0;
    ballX = 500;
    ballY = 250;
  }
  
  if(ballX > 1025){
    score1++;
    countdown = 0;
    ballX = 500;
    ballY = 250;
  }
}


void singlePlayer(){
  gamestart = true;
  single = true;
  P1.hide();
  P2.hide();
}

void MultiPlayer(){
  single = false;
  gamestart = true;
  P1.hide();
  P2.hide();
}


void keyPressed(){
  //paddle 1
  if(key == 'w'){stupidw = true;}
  if(key == 's'){stupids = true;}
  //paddle 2
  if(keyCode == 38 && !single){stupidw2 = true;}
  if(keyCode == 40 && !single){stupids2 = true;}
}

void keyReleased(){
  //paddle 1
  if(key == 'w'){stupidw = false;}
  if(key == 's'){stupids = false;}
  //paddle 2
  if(keyCode == 38){stupidw2 = false;}
  if(keyCode == 40){stupids2 = false;}
}
