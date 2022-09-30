int x;
int y;

int fruitX;
int fruitY;

int snakeLength = 6;

int[] wowArray;
int[] damnArray;

boolean up = false;
boolean down = false;
boolean left = false;
boolean right = true;

void setup(){
  size(600,600);
  background(255,255,255);
  fill(0,0,0);
  wowArray = new int[snakeLength];
  damnArray = new int[snakeLength];
  frameRate(10);
  
  fruitX = floor(random(0,14)) * 40;
  fruitY = floor(random(0,14)) * 40;
}

void draw(){
  
  if(right && !left){
    x+=40;
  }
  if(up && !down){
    y-=40;
  }
  if(left && !right){
    x-=40;
  }
  if(down && !up){
    y+=40;
  }
  
  if(x > 580){x = 0;}
  if(x <= -20){x = 600;}
  if(y > 580){y = 0;}
  if(y <= -20){y = 600;}
  
  for(int i = 0; i < snakeLength - 1; i++){
    wowArray[i] = wowArray[i+1];
  }
  wowArray[snakeLength - 1] = x;
  
  for(int i = 0; i < snakeLength - 1; i++){
    damnArray[i] = damnArray[i+1];
  } 
  damnArray[snakeLength - 1] = y;
  
  if(fruitX == x && fruitY == y){
    fruitX = floor(random(0,14)) * 40;
    fruitY = floor(random(0,14)) * 40;
  }
  
  println(fruitX);
  println(fruitY);
  
  background(255,255,255);
  fill(0,0,0);
  rect(wowArray[snakeLength - 1],damnArray[snakeLength - 1],40,40);
  for(int i = 0; i < snakeLength - 1; i++){
    rect(wowArray[i],damnArray[i],40,40);
  }
  fill(255,0,0);
  rect(fruitX,fruitY,40,40);
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
