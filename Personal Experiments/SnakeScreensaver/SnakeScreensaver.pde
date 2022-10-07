int x;
int y;
int failsafe;

int colorok;
int fruitcollect;

int fruitX;
int fruitY;

int addlength = 40;

int[] wowArray;
int[] damnArray;

int[] addWowArray;
int[] addDamnArray;

void setup(){
  size(400,400);
  background(255,255,255);
  fill(0,0,0);
  
  
  wowArray = new int[addlength];
  damnArray = new int[addlength];
  frameRate(30);
  
  fruitX = floor(random(0,width/40)) * 40;
  fruitY = floor(random(0,height/40)) * 40;
}

void draw(){
  colorMode(HSB,1024,1,1);
  for(int i = 0; i < wowArray.length - 1; i++){
    wowArray[addlength-i-1] = wowArray[addlength-i-2];
  }
  wowArray[0] = x;
  
  for(int i = 0; i < damnArray.length - 1; i++){
    damnArray[addlength-i-1] = damnArray[addlength-i-2];
  } 
  damnArray[0] = y;
  
  if(fruitX == x && fruitY == y){
    fruitX = floor(random(0,width/40)) * 40;
    fruitY = floor(random(0,height/40)) * 40;
    
    fruitcollect++;
   
    addlength ++;
    addWowArray = new int[addlength];
      for(int x = 0; x < wowArray.length; x++){
        addWowArray[x] = wowArray[x];
      }
      
      wowArray = new int[addlength];
      
      for(int x = 0; x < addWowArray.length; x++){
        wowArray[x] = addWowArray[x];
      }
      
      for(int i = 0; i < 16; i++){
        wowArray[addlength - 1] = -100;
      }
      
      addDamnArray = new int[addlength];
      for(int x = 0; x < damnArray.length; x++){
        addDamnArray[x] = damnArray[x];
      }
      
      damnArray = new int[addlength];
      
      for(int x = 0; x < addDamnArray.length; x++){
        damnArray[x] = addDamnArray[x];
      }
     damnArray[addlength - 1] = -100;
  }
  
  for(int i = 0; i < addlength; i++){
      if(fruitX == wowArray[i] && fruitY == damnArray[i]){
        fruitX = floor(random(0,width/40)) * 40;
        fruitY = floor(random(0,height/40)) * 40;
      }
  }
  
  background(250,1,1000);
  fill(colorok,1,1000);
  rect(wowArray[0],damnArray[0],40,40);
  for(int i = 0; i < addlength - 1; i++){
    strokeWeight(5);
    fill(0,0,0);
    stroke(0,0,0);
    rect(wowArray[i]-1,damnArray[i]-1,42,42);
  }
  
  for(int i = 0; i < addlength - 1; i++){
    strokeWeight(3);
    fill(512+(256/(addlength/15)*i/15),1,1);
    stroke(512+(256/(addlength/15)*i/15),1,1);
    rect(wowArray[i],damnArray[i],40,40);
  }
  fill(1024,1,1000);
  stroke(1,1,0);
  rect(fruitX,fruitY,40,40,50);
  
  if(x == fruitX){
    if(y > fruitY){y-=40;}
    if(y < fruitY){y+=40;}
  }
  
  if(x < fruitX){x+=40;}
  if(x > fruitX){x-=40;}
  
  
  
  if(x > width-40){x = 0;}
  if(x < 0){x = width-40;}
  if(y > height-40){y = 0;}
  if(y < 0){y = height-40;}
  
  rect(x,y,40,40);
}
