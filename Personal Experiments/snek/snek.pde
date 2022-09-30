int x;
int y;

int snakeLength = 15;
int hh;

int[] wowArray;
int[] damnArray;

boolean up = false;
boolean down = false;
boolean left = false;
boolean right = true;

void setup(){
  size(500,500);
  background(255,255,255);
  fill(0,0,0);
  wowArray = new int[snakeLength];
  damnArray = new int[snakeLength];
  frameRate(30);
}

void draw(){
  
  if(right && !left){
    x+=20;
  }
  if(up && !down){
    y-=20;
  }
  if(left && !right){
    x-=20;
  }
  if(down && !up){
    y+=20;
  }
  
  if(x > 480){x = 0;}
  if(x <= -20){x = 500;}
  if(y > 480){y = 0;}
  if(y <= -20){y = 500;}
  
  for(int i = 0; i < snakeLength - 1; i++){
    wowArray[i] = wowArray[i+1];
  }
  wowArray[snakeLength - 1] = x;
  
  for(int i = 0; i < snakeLength - 1; i++){
    damnArray[i] = damnArray[i+1];
  } 
  damnArray[snakeLength - 1] = y;
  
  
  
  println(wowArray);
  println(damnArray);
  
  background(255,255,255);
  rect(wowArray[snakeLength - 1],damnArray[snakeLength - 1],20,20);
  for(int i = 0; i < snakeLength - 1; i++){
    rect(wowArray[i],damnArray[i],20,20);
  }
  
}

void keyPressed(){
  if(keyCode == 38 && !down){
    up = true;
    right = false;
    left = false;
  }
  if(keyCode == 39 && !left){
    right = true;
    up = false;
    down = false;
  }
  if(keyCode == 40 && !up){
    down = true;
    right = false;
    left = false;
  }
  if(keyCode == 37 && !right){
    left = true;
    up = false;
    down = false;
  }
}
