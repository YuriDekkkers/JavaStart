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

boolean up = false;
boolean down = false;
boolean left = false;
boolean right = true;
boolean remup = false;
boolean remdown = false;
boolean remleft = false;
boolean remright = false;

void setup(){
  size(600,680);
  background(255,255,255);
  fill(0,0,0);
  
  
  wowArray = new int[addlength];
  damnArray = new int[addlength];
  frameRate(60);
  
  fruitX = floor(random(0,14)) * 40;
  fruitY = floor(random(0,14)) * 40;
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
    fruitX = floor(random(0,14)) * 40;
    fruitY = floor(random(0,14)) * 40;
    
    fruitcollect++;
   
    addlength +=16;
    addWowArray = new int[addlength];
      for(int x = 0; x < wowArray.length; x++){
        addWowArray[x] = wowArray[x];
      }
      
      wowArray = new int[addlength];
      
      for(int x = 0; x < addWowArray.length; x++){
        wowArray[x] = addWowArray[x];
      }
      
      for(int i = 0; i < 16; i++){
        wowArray[addlength - 16 + i] = -100;
      }
      
      addDamnArray = new int[addlength];
      for(int x = 0; x < damnArray.length; x++){
        addDamnArray[x] = damnArray[x];
      }
      
      damnArray = new int[addlength];
      
      for(int x = 0; x < addDamnArray.length; x++){
        damnArray[x] = addDamnArray[x];
      }
     damnArray[addlength - 16] = -100;
  }
  
  for(int i = 0; i < addlength; i++){
      if(fruitX == wowArray[i] && fruitY == damnArray[i]){
        fruitX = floor(random(0,14)) * 40;
        fruitY = floor(random(0,14)) * 40;
      }
  }
  
  println(wowArray);
  println(addlength);
  
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
  
  if(right && !left){
    x+=5;
  }
  if(up && !down){
    y-=5;
  }
  if(left && !right){
    x-=5;
  }
  if(down && !up){
    y+=5;
  }
  
  if(x > width-40){x = 0;}
  if(x < 0){x = width-40;}
  if(y > 600-40){y = 0;}
  if(y < 0){y = 600-40;}
  
  for(int i = 0; i < 15; i++){
    if(!down && x == 40*i && remup){
      remup = false;
      failsafe=0;
      up = true;
      right = false;
      left = false;
    }
    if(!left && y == 40*i && remright){
      remright = false;
      failsafe=0;
      right = true;
      up = false;
      down = false;
    }
    if(!up && x == 40*i && remdown){
      remdown = false;
      failsafe=0;
      down = true;
      right = false;
      left = false;
    }
    if(!right && y == 40*i && remleft){
      remleft = false;
      failsafe=0;
      left = true;
      up = false;
      down = false;
    }
  }
  if(remup){failsafe++;if(failsafe==16){remup=false;failsafe=0;}}
  if(remdown){failsafe++;if(failsafe==16){remdown=false;failsafe=0;}}
  if(remleft){failsafe++;if(failsafe==16){remleft=false;failsafe=0;}}
  if(remright){failsafe++;if(failsafe==16){remright=false;failsafe=0;}}
  
  colorMode(RGB,256,256,256);
  strokeWeight(3);
  fill(255,255,255);
  rect(-10,600,620,90);
  fill(255,0,0);
  rect(80,620,40,40,100);
  fill(0,0,0);
  textSize(20);
  text(": " + fruitcollect,130,650);
}

void keyPressed(){
  if(keyCode == 38 && !remleft && !remdown && !remright){
    remup = true;
  }
  if(keyCode == 37 && !remup && !remdown && !remright){
    remleft = true;
  }
  if(keyCode == 39 && !remleft && !remdown && !remup){
    remright = true;
  }
  if(keyCode == 40 && !remleft && !remup && !remright){
    remdown = true;
  }
}
