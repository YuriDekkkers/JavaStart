int x;
int y;

int fruitX;
int fruitY;

//int snakeLength = 6;
int addlength = 6;

int[] wowArray;
int[] damnArray;

int[] addWowArray;
int[] addDamnArray;

boolean up = false;
boolean down = false;
boolean left = false;
boolean right = true;

void setup(){
  size(600,600);
  background(255,255,255);
  fill(0,0,0);
  wowArray = new int[addlength];
  damnArray = new int[addlength];
  frameRate(10);
  
  fruitX = floor(random(0,14)) * 40;
  fruitY = floor(random(0,14)) * 40;
}

void draw(){
  if(fruitX == x && fruitY == y){
    fruitX = floor(random(0,14)) * 40;
    fruitY = floor(random(0,14)) * 40;
    
    addlength ++;
    addWowArray = new int[addlength];
      for(int x = 0; x < wowArray.length; x++){
        addWowArray[x] = wowArray[x];
      }
      
      wowArray = new int[addlength];
      
      for(int x = 0; x < addWowArray.length; x++){
        wowArray[x] = addWowArray[x];
      }
      wowArray[addlength - 1] = wowArray[addlength-2];
      
      addDamnArray = new int[addlength];
      for(int x = 0; x < damnArray.length; x++){
        addDamnArray[x] = damnArray[x];
      }
      
      damnArray = new int[addlength];
      
      for(int x = 0; x < addDamnArray.length; x++){
        damnArray[x] = addDamnArray[x];
      }
     damnArray[addlength-1] = damnArray[addlength-2];
      
  }
  
  println(addlength);
  for(int i = 0; i < wowArray.length - 1; i++){
    wowArray[i] = wowArray[i+1];
  }
  wowArray[addlength - 1] = x;
  
  for(int i = 0; i < damnArray.length - 1; i++){
    damnArray[i] = damnArray[i+1];
  } 
  damnArray[addlength - 1] = y;
  
  
  
  println(wowArray);
  
  background(255,255,255);
  fill(0,200,255);
  rect(wowArray[addlength - 1],damnArray[addlength - 1],40,40);
  for(int i = 0; i < addlength - 1; i++){
    fill(0,200,255);
    rect(wowArray[i],damnArray[i],40,40);
  }
  fill(255,0,0);
  rect(fruitX,fruitY,40,40);
  
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
