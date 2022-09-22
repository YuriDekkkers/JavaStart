import controlP5.*;
import processing.sound.*;

ControlP5 cp;
SoundFile Boing;
SoundFile Score;
SoundFile BigBoing;
SoundFile win;
SoundFile music;
SoundFile GameMusic;

Button P1;
Button P2;
Button info;
Button back;
Button endless;

int countdown = 0;
int difCount = 0;
int Difficulty = 1;

int ballX = 500;
int ballY = 250;
boolean x;
boolean y;
int ballSpeed;
int randSpeed;
boolean hitable = true;
int debuff1 = 0;
int debuff2 = 0;

int paddle1Y = 0;
int paddle2Y = 0;

boolean single = false;
boolean gamestart = false;
boolean infoscreen = false;
boolean EndlessOff = true;

int score1;
int score2;

boolean stupidw = false;
boolean stupids = false;
boolean stupidw2 = false;
boolean stupids2 = false;
int funnyTimer1;
int funnyTimer2;
int dummyTimer;
int InputDelay;
int ohheyanothertimer;

int ApadS = 5;
int CompStrat;
//===========================================================================================================================================//
void setup(){
  size(1000,500);
  background(0,0,0);
  
  cp = new ControlP5(this);
  Boing = new SoundFile(this, "ballBounce.wav");
    Boing.amp(0.8);
  Score = new SoundFile(this, "score.wav");
    Score.amp(0.8);
  BigBoing = new SoundFile(this, "hardbounce.wav");
    BigBoing.amp(0.8);
  win = new SoundFile(this, "WinJingle.wav");
    win.amp(0.8);
  music = new SoundFile(this, "pong song question mark.wav");
    music.amp(0.8);
    music.loop();

  //buttons
  P1 = cp.addButton("singlePlayer")
         .setSize(200,75)
         .setPosition(275,300)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
        
  P2 = cp.addButton("MultiPlayer")
         .setSize(200,75)
         .setPosition(525,300)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
         
  
  info = cp.addButton("Information")
         .setSize(50,20)
         .setPosition(40,40)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
         
  back = cp.addButton("back")
         .hide()
         .setSize(50,20)
         .setPosition(40,40)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
         
  endless = cp.addButton("EndlessMode")
         .setSize(200,40)
         .setPosition(525,400)
         .setColorLabel(color(255,255,255))
         .setColorActive(color(255,255,255))
         .setColorForeground(color(0,0,0))
         .setColorBackground(color(0,0,0));
}
//===========================================================================================================================================//
void draw(){
  if(!gamestart && !infoscreen){
  //logo
  background(0,0,0);
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
  
  stroke(255,255,255);
  rect(270,295,210,85);
  rect(520,295,210,85);
  rect(520,395,210,50);
  rect(35,35,60,30);
  }
//===========================================================================================================================================//
  //hitboxes paddles
  if(paddle1Y < 0){paddle1Y = 0;}
  if(paddle1Y > 349){paddle1Y = 349;}
  if(paddle2Y < 0 + CompStrat){paddle2Y = 0 + CompStrat;}
  if(paddle2Y > 349 - CompStrat){paddle2Y = 349 - CompStrat;}
  
  //on start to spawn all stuff
  ballSpeed = 6 + Difficulty;
  funnyTimer1--;
  funnyTimer2--;
  dummyTimer--;
  InputDelay--;
//===========================================================================================================================================//
  if(gamestart){
    music.stop();
    if(countdown == 0){ballX = 500; ballY = 250;}
    stroke(255,255,255);
    background(0,0,0);
    difCount++;
    for(int i = 0; i < 69; i++){
      fill(0,0,0);
      rect(495,0 + i*51,10,40);
    }
    if(Difficulty > 20){Difficulty = 20;}
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
//===========================================================================================================================================//
  //movement paddle 1
  if(stupidw == true){paddle1Y -= 10;}
  if(stupids == true){paddle1Y += 10;}
  
  //mocement paddle 2
  if(stupidw2 == true){paddle2Y -= 10;}
  if(stupids2 == true){paddle2Y += 10;}
  
  //movement ball
  if(countdown >= 120){
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
        ballX+= ballSpeed + randSpeed;
      }else{
        ballX-=ballSpeed + randSpeed;
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
//===========================================================================================================================================//
  if(difCount >= 1800){Difficulty ++;difCount = 0;}

  //auto paddle2 movement
  if(single){
    if((paddle2Y + 75) < ballY){paddle2Y+=ApadS;}else 
    if((paddle2Y + 75) > ballY){paddle2Y-=ApadS;}
  }
  
  //auto paddle difficulty increase
  if(single){
    if(Difficulty == 3){ApadS = 7;CompStrat = 15;}
    if(Difficulty == 6){ApadS = 9;CompStrat = 25;}
    if(Difficulty == 9){ApadS = 11;CompStrat = 35;}
    if(Difficulty == 12){ApadS = 14;CompStrat = 0;}
  }
//===========================================================================================================================================//
  //point score counter
  if(ballX < -30){
    score2++;
    countdown = 0;
    ballX = 500;
    ballY = 250;
    if(Boing.isPlaying()||BigBoing.isPlaying()){Boing.stop();BigBoing.stop();}
    Score.play();
    randSpeed = 0;
  }
  
  if(ballX > 1030){
    score1++;
    countdown = 0;
    ballX = 500;
    ballY = 250;
    if(Boing.isPlaying()||BigBoing.isPlaying()){Boing.stop();BigBoing.stop();}
    Score.play();
    randSpeed = 0;
  }
//===========================================================================================================================================//
  //endless mode disabled
  if(EndlessOff && gamestart && !single){
    if(score1 >= 15){
      if(ohheyanothertimer == 1){win.play();}
      fill(255,255,255);
      textSize(20);
      text("player 1 wins!",350,250);
      fill(0,0,0);
      if(countdown > 10){countdown = 0;}
      ohheyanothertimer++;
      if(ohheyanothertimer == 240){
        score1 = 0;
        score2 = 0;
        gamestart = false;
        ohheyanothertimer = 0;
        Difficulty = 1;
        win.stop();
      }
    }
    if(score2 >= 15){
      if(ohheyanothertimer == 1){win.play();}
      fill(255,255,255);
      textSize(20);
      text("player 2 wins!",550,250);
      fill(0,0,0);
      if(countdown > 10){countdown = 0;}
      ohheyanothertimer++;
      if(ohheyanothertimer == 240){
        score1 = 0;
        score2 = 0;
        gamestart = false;
        ohheyanothertimer = 0;
        Difficulty = 1;
        win.stop();
      }
    }
  }
//===========================================================================================================================================//
  //sounds and randomness
  if(ballX <= 85 && ballX >= 75 && (ballY >= (paddle1Y-15) && ballY <= (paddle1Y + 165)) && randSpeed < 7){
    if(Boing.isPlaying()){Boing.stop();}
    Boing.play();
    randSpeed = floor(random(0,8));
    dummyTimer = 10;
  }
  if(ballX >= 915 && ballX <= 925 && (ballY >= (paddle2Y-15) && ballY <= (paddle2Y + 165) )&& randSpeed < 7){
    if(Boing.isPlaying()){Boing.stop();}
    Boing.play();
    randSpeed = floor(random(0,8));
    dummyTimer = 10;
  }
  if(ballX <= 85 && ballX >= 75 && (ballY >= (paddle1Y-15) && ballY <= (paddle1Y + 165)) && randSpeed >= 7 && dummyTimer < 0){
    if(BigBoing.isPlaying()){BigBoing.stop();}
    BigBoing.play();
    randSpeed = floor(random(0,8));
  }
  if(ballX >= 915 && ballX <= 925 && (ballY >= (paddle2Y-15) && ballY <= (paddle2Y + 165) )&& randSpeed >= 7 && dummyTimer < 0){
    if(BigBoing.isPlaying()){BigBoing.stop();}
    BigBoing.play();
    randSpeed = floor(random(0,8));
  }
  if((ballY <= 25 || ballY >= 475) && randSpeed < 7){
    if(Boing.isPlaying()){Boing.stop();}
    Boing.play();
  }
  if((ballY <= 25 || ballY >= 475) && randSpeed >= 7){
    if(BigBoing.isPlaying()){BigBoing.stop();}
    BigBoing.play();
  }
  if(ballX < 60 || ballX> 940){Boing.stop();BigBoing.stop();}
//===========================================================================================================================================//
  //some cool effects
  //ball power
  if(randSpeed >= 7){
    switch(countdown % 2){
      case 1:
        stroke(255,0,255);
        ellipse(ballX,ballY,50,50);
        break;
      case 0:
        stroke(0,255,255);
        ellipse(ballX,ballY,50,50);
        break;
    }
  }
//===========================================================================================================================================//
  //paddle score
  if(ballX >= 1010){
    funnyTimer1 = 90;
  }
  if(funnyTimer1 >= 0){
    switch(countdown % 4){
      case 0:
      case 1:
        stroke(255,0,255);
        rect(30,paddle1Y,30,150,10);
        break;
      case 2:
      case 3:
        stroke(0,255,255);
        rect(30,paddle1Y,30,150,10);
        break;
      }
    }
  
  if(ballX <= -10){
    funnyTimer2 = 90;
  }
  if(funnyTimer2 >= 0){
    switch(countdown % 4){
      case 0:
      case 1:
        stroke(255,0,255);
        rect(940,paddle2Y,30,150,10);
        break;
      case 2:
      case 3:
        stroke(0,255,255);
        rect(940,paddle2Y,30,150,10);
        break;
    }
  }
//===========================================================================================================================================//
  if(!gamestart && !infoscreen){
    P1.show();
    P2.show();
    info.show();
    endless.show();
    funnyTimer1 = -10;
    funnyTimer2 = -10;
    countdown = 0;
    score1 = 0;
    score2 = 0;
    Difficulty = 1;
    if(!music.isPlaying()){music.loop();}
  }
}
//===========================================================================================================================================//
void singlePlayer(){
  gamestart = true;
  single = true;
  P1.hide();
  P2.hide();
  info.hide();
  endless.hide();
}

void MultiPlayer(){
  single = false;
  gamestart = true;
  P1.hide();
  P2.hide();
  info.hide();
  endless.hide();
}

void Information(){
  infoscreen = true;
  background(0,0,0);
  rect(10,10,980,480,40);
  P1.hide();
  P2.hide();
  endless.hide();
  rect(35,35,60,30);
  back.show();
  info.hide();
  textSize(15);
  fill(255,255,255);
  text("- W/S for left paddle, UP/DOWN keys for right paddle.",225,110);
  text("- Difficulty increases every 30 seconds, maxed out at 20.",225,150);
  text("- Every level of difficulty increases the ball speed by 1",225,190);
  text("- the Computer (in singleplayer) also gets better as the difficulty increases",225,230);
  text("- When the ball flashes it means that it is at maximum speed.",225,270);
  text("- press R at any time to quit the game and go to the menu screen.",225,310);
  text("- when endless mode is disabled the game goes on until a plyer gets 15 points.",225,350);
  text("- Endless mode only applies to multiplayer",225,390);
}

void back(){
  back.hide();
  P1.show();
  P2.show();
  info.show();
  endless.show();
  infoscreen = false;
}

void EndlessMode(){
  if(EndlessOff && InputDelay <= 0){
    endless.setColorBackground(color(0,255,0));
    endless.setColorForeground(color(0,255,0));
    EndlessOff = false;
    InputDelay = 10;
  }
  if(!EndlessOff && InputDelay <= 0){
    endless.setColorBackground(color(0,0,0));
    endless.setColorForeground(color(0,0,0));
    EndlessOff = true;
    InputDelay = 10;
  }
}

void keyPressed(){
  //paddle 1
  if(key == 'w'){stupidw = true;}
  if(key == 's'){stupids = true;}
  //paddle 2
  if(keyCode == 38 && !single){stupidw2 = true;}
  if(keyCode == 40 && !single){stupids2 = true;}
  if(key == 'r'){gamestart = false;}
}

void keyReleased(){
  //paddle 1
  if(key == 'w'){stupidw = false;}
  if(key == 's'){stupids = false;}
  //paddle 2
  if(keyCode == 38){stupidw2 = false;}
  if(keyCode == 40){stupids2 = false;}
}
