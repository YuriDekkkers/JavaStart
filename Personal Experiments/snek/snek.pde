int x;
int y;

int colorok;

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
  colorMode(HSB,height+width,1,1);
  
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
    wowArray[addlength-i-1] = wowArray[addlength-i-2];
  }
  wowArray[0] = x;
  
  for(int i = 0; i < damnArray.length - 1; i++){
    damnArray[addlength-i-1] = damnArray[addlength-i-2];
  } 
  damnArray[0] = y;
  
  
  
  println(wowArray);
  
  background(250,1,1);
  fill(colorok,1,1);
  rect(wowArray[0],damnArray[0],40,40,5);
  for(int i = 0; i < addlength - 1; i++){
    fill((1200/addlength*i),1,1);
    rect(wowArray[i],damnArray[i],40,40,5);
  }
  fill(1024,1,1);
  rect(fruitX,fruitY,40,40,50);
  
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
  
  if(x > width-20){x = 0;}
  if(x <= -20){x = width;}
  if(y > height-20){y = 0;}
  if(y <= -20){y = height;}
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
