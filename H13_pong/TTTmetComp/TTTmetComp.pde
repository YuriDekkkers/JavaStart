import controlP5.*;

ControlP5 cp;

Button TL;
Button TM;
Button TR;
Button ML;
Button MM;
Button MR;
Button BL;
Button BM;
Button BR;

boolean Red = true;

int[] PlacementArray;

boolean winner = false;

void setup(){
  background(255,255,255);
  size(800,800);
  PlacementArray = new int[9];
  strokeWeight(5);
  cp = new ControlP5(this);
//>======================================================================================================================================<//
  TL = cp.addButton("topleft").setSize(176,176).setPosition(112,112).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  TM = cp.addButton("topmiddle").setSize(176,176).setPosition(312,112).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  TR = cp.addButton("topright").setSize(176,176).setPosition(512,112).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  
  ML = cp.addButton("middleleft").setSize(176,176).setPosition(112,312).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  MM = cp.addButton("middle").setSize(176,176).setPosition(312,312).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  MR = cp.addButton("middleright").setSize(176,176).setPosition(512,312).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  
  BL = cp.addButton("bottomleft").setSize(176,176).setPosition(112,512).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  BM = cp.addButton("bottommiddle").setSize(176,176).setPosition(312,512).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
  BR = cp.addButton("bottomright").setSize(176,176).setPosition(512,512).setColorBackground(color(255,255,255)).setColorActive(color(255,255,255)).setColorForeground(color(255,255,255));
}
//>======================================================================================================================================<//
void draw(){
  fill(255,255,255);
  rect(100,100,600,600);
  for(int i = 0; i < 2; i++){
    line(300+(i*200),100,300+(i*200),700);
    line(100,300+(i*200),700,300+(i*200));
  }
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 3; j++){
      rect(110+i*200,110+j*200,180,180);
    }
  }
  
  if(PlacementArray[0] == 2){fill(0,255,255);rect(110,110,180,180);
  }else if(PlacementArray[0] == 1){fill(255,0,0);rect(110,110,180,180);}
  
  if(PlacementArray[1] == 2){fill(0,255,255);rect(310,110,180,180);
  }else if(PlacementArray[1] == 1){fill(255,0,0);rect(310,110,180,180);}
  
  if(PlacementArray[2] == 2){fill(0,255,255);rect(510,110,180,180);
  }else if(PlacementArray[2] == 1){fill(255,0,0);rect(510,110,180,180);}
  
  if(PlacementArray[3] == 2){fill(0,255,255);rect(110,310,180,180);
  }else if(PlacementArray[3] == 1){fill(255,0,0);rect(110,310,180,180);}
  
  if(PlacementArray[4] == 2){fill(0,255,255);rect(310,310,180,180);
  }else if(PlacementArray[4] == 1){fill(255,0,0);rect(310,310,180,180);}
  
  if(PlacementArray[5] == 2){fill(0,255,255);rect(510,310,180,180);
  }else if(PlacementArray[5] == 1){fill(255,0,0);rect(510,310,180,180);}
  
  if(PlacementArray[6] == 2){fill(0,255,255);rect(110,510,180,180);
  }else if(PlacementArray[6] == 1){fill(255,0,0);rect(110,510,180,180);}
  
  if(PlacementArray[7] == 2){fill(0,255,255);rect(310,510,180,180);
  }else if(PlacementArray[7] == 1){fill(255,0,0);rect(310,510,180,180);}
  
  if(PlacementArray[8] == 2){fill(0,255,255);rect(510,510,180,180);
  }else if(PlacementArray[8] == 1){fill(255,0,0);rect(510,510,180,180);}
//>======================================================================================================================================<//
if(PlacementArray[0] == 1 && PlacementArray[1] == 1 && PlacementArray[2] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[3] == 1 && PlacementArray[4] == 1 && PlacementArray[5] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[6] == 1 && PlacementArray[7] == 1 && PlacementArray[8] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[0] == 1 && PlacementArray[3] == 1 && PlacementArray[6] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[1] == 1 && PlacementArray[4] == 1 && PlacementArray[7] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[2] == 1 && PlacementArray[5] == 1 && PlacementArray[8] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[0] == 1 && PlacementArray[4] == 1 && PlacementArray[8] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[2] == 1 && PlacementArray[4] == 1 && PlacementArray[6] == 1){
  fill(255,0,0);
  rect(100,100,600,600);
  winner = true;
}
//>======================================================================================================================================<//
if(PlacementArray[0] == 2 && PlacementArray[1] == 2 && PlacementArray[2] == 2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[3] == 2 && PlacementArray[4] == 2 && PlacementArray[5] == 2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[6] == 2 && PlacementArray[7] == 2 && PlacementArray[8] ==2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[0] == 2 && PlacementArray[3] == 2 && PlacementArray[6] == 2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[1] == 2 && PlacementArray[4] == 2 && PlacementArray[7] == 2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[2] == 2 && PlacementArray[5] == 2 && PlacementArray[8] == 2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[0] == 2 && PlacementArray[4] == 2 && PlacementArray[8] == 2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}
if(PlacementArray[2] == 2 && PlacementArray[4] == 2 && PlacementArray[6] == 2){
  fill(0,255,255);
  rect(100,100,600,600);
  winner = true;
}

if(winner){
  TL.hide();
  TM.hide();
  TR.hide();
  ML.hide();
  MM.hide();
  MR.hide();
  BL.hide();
  BM.hide();
  BR.hide();
  textSize(50);
  fill(0,0,0);
  text("WINNER!",320,325);
}

//oh god im actually trying it
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
if(PlacementArray[0] == 2 && PlacementArray[1] == 2){
  if(!Red && PlacementArray[2] == 0){
    PlacementArray[2] = 2;
    TR.hide();
    Red = true;
  }
}
if(PlacementArray[1] == 2 && PlacementArray[2] == 2){
  if(!Red && PlacementArray[0] == 0){
    PlacementArray[0] = 2;
    TL.hide();
    Red = true;
  }
}
if(PlacementArray[0] == 2 && PlacementArray[2] == 2){
  if(!Red && PlacementArray[1] == 0){
    PlacementArray[1] = 2;
    TM.hide();
    Red = true;
  }
}


if(PlacementArray[0] == 2 && PlacementArray[3] == 2){
  if(!Red && PlacementArray[6] == 0){
    PlacementArray[6] = 2;
    BL.hide();
    Red = true;
  }
}
if(PlacementArray[3] == 2 && PlacementArray[6] == 2){
  if(!Red && PlacementArray[0] == 0){
    PlacementArray[0] = 2;
    TL.hide();
    Red = true;
  }
}
if(PlacementArray[0] == 2 && PlacementArray[6] == 2){
  if(!Red && PlacementArray[3] == 0){
    PlacementArray[3] = 2;
    ML.hide();
    Red = true;
  }
}


if(PlacementArray[2] == 2 && PlacementArray[5] == 2){
  if(!Red && PlacementArray[8] == 0){
    PlacementArray[8] = 2;
    BR.hide();
    Red = true;
  }
}
if(PlacementArray[5] == 2 && PlacementArray[8] == 2){
  if(!Red && PlacementArray[2] == 0){
    PlacementArray[2] = 2;
    TR.hide();
    Red = true;
  }
}
if(PlacementArray[2] == 2 && PlacementArray[8] == 2){
  if(!Red && PlacementArray[5] == 0){
    PlacementArray[5] = 2;
    MR.hide();
    Red = true;
  }
}


if(PlacementArray[6] == 2 && PlacementArray[7] == 2){
  if(!Red && PlacementArray[8] == 0){
    PlacementArray[8] = 2;
    BR.hide();
    Red = true;
  }
}
if(PlacementArray[7] == 2 && PlacementArray[8] == 2){
  if(!Red && PlacementArray[6] == 0){
    PlacementArray[6] = 2;
    BL.hide();
    Red = true;
  }
}
if(PlacementArray[6] == 2 && PlacementArray[8] == 2){
  if(!Red && PlacementArray[7] == 0){
    PlacementArray[7] = 2;
    BM.hide();
    Red = true;
  }
}


if(PlacementArray[3] == 2 && PlacementArray[4] == 2){
  if(!Red && PlacementArray[5] == 0){
    PlacementArray[5] = 2;
    MR.hide();
    Red = true;
  }
}
if(PlacementArray[4] == 2 && PlacementArray[5] == 2){
  if(!Red && PlacementArray[3] == 0){
    PlacementArray[3] = 2;
    ML.hide();
    Red = true;
  }
}
if(PlacementArray[3] == 2 && PlacementArray[5] == 2){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}
if(PlacementArray[1] == 2 && PlacementArray[4] == 2){
  if(!Red && PlacementArray[7] == 0){
    PlacementArray[7] = 2;
    BM.hide();
    Red = true;
  }
}
if(PlacementArray[4] == 2 && PlacementArray[7] == 2){
  if(!Red && PlacementArray[1] == 0){
    PlacementArray[1] = 2;
    TM.hide();
    Red = true;
  }
}
if(PlacementArray[1] == 2 && PlacementArray[7] == 2){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}

if(PlacementArray[0] == 2 && PlacementArray[4] == 2){
  if(!Red && PlacementArray[8] == 0){
    PlacementArray[8] = 2;
    BR.hide();
    Red = true;
  }
}
if(PlacementArray[4] == 2 && PlacementArray[8] == 2){
  if(!Red && PlacementArray[0] == 0){
    PlacementArray[0] = 2;
    TL.hide();
    Red = true;
  }
}
if(PlacementArray[0] == 2 && PlacementArray[8] == 2){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}
if(PlacementArray[6] == 2 && PlacementArray[4] == 2){
  if(!Red && PlacementArray[2] == 0){
    PlacementArray[2] = 2;
    TR.hide();
    Red = true;
  }
}
if(PlacementArray[4] == 2 && PlacementArray[2] == 2){
  if(!Red && PlacementArray[6] == 0){
    PlacementArray[6] = 2;
    BL.hide();
    Red = true;
  }
}
if(PlacementArray[6] == 2 && PlacementArray[2] == 2){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}


//ah well ok then that is quite some code there

if(PlacementArray[0] == 1 && PlacementArray[1] == 1){
  if(!Red && PlacementArray[2] == 0){
    PlacementArray[2] = 2;
    TR.hide();
    Red = true;
  }
}
if(PlacementArray[1] == 1 && PlacementArray[5] == 1){
  if(!Red && PlacementArray[2] == 0){
    PlacementArray[2] = 2;
    TR.hide();
    Red = true;
  }
}
if(PlacementArray[1] == 1 && PlacementArray[2] == 1){
  if(!Red && PlacementArray[0] == 0){
    PlacementArray[0] = 2;
    TL.hide();
    Red = true;
  }
}
if(PlacementArray[0] == 1 && PlacementArray[2] == 1){
  if(!Red && PlacementArray[1] == 0){
    PlacementArray[1] = 2;
    TM.hide();
    Red = true;
  }
}


if(PlacementArray[0] == 1 && PlacementArray[3] == 1){
  if(!Red && PlacementArray[6] == 0){
    PlacementArray[6] = 2;
    BL.hide();
    Red = true;
  }
}
if(PlacementArray[3] == 1 && PlacementArray[6] == 1){
  if(!Red && PlacementArray[0] == 0){
    PlacementArray[0] = 2;
    TL.hide();
    Red = true;
  }
}
if(PlacementArray[0] == 1 && PlacementArray[6] == 1){
  if(!Red && PlacementArray[3] == 0){
    PlacementArray[3] = 2;
    ML.hide();
    Red = true;
  }
}


if(PlacementArray[2] == 1 && PlacementArray[5] == 1){
  if(!Red && PlacementArray[8] == 0){
    PlacementArray[8] = 2;
    BR.hide();
    Red = true;
  }
}
if(PlacementArray[5] == 1 && PlacementArray[8] == 1){
  if(!Red && PlacementArray[2] == 0){
    PlacementArray[2] = 2;
    TR.hide();
    Red = true;
  }
}
if(PlacementArray[2] == 1 && PlacementArray[8] == 1){
  if(!Red && PlacementArray[5] == 0){
    PlacementArray[5] = 2;
    MR.hide();
    Red = true;
  }
}


if(PlacementArray[6] == 1 && PlacementArray[7] == 1){
  if(!Red && PlacementArray[8] == 0){
    PlacementArray[8] = 2;
    BR.hide();
    Red = true;
  }
}
if(PlacementArray[7] == 1 && PlacementArray[8] == 1){
  if(!Red && PlacementArray[6] == 0){
    PlacementArray[6] = 2;
    BL.hide();
    Red = true;
  }
}
if(PlacementArray[6] == 1 && PlacementArray[8] == 1){
  if(!Red && PlacementArray[7] == 0){
    PlacementArray[7] = 2;
    BM.hide();
    Red = true;
  }
}


if(PlacementArray[3] == 1 && PlacementArray[4] == 1){
  if(!Red && PlacementArray[5] == 0){
    PlacementArray[5] = 2;
    MR.hide();
    Red = true;
  }
}
if(PlacementArray[4] == 1 && PlacementArray[5] == 1){
  if(!Red && PlacementArray[3] == 0){
    PlacementArray[3] = 2;
    ML.hide();
    Red = true;
  }
}
if(PlacementArray[3] == 1 && PlacementArray[5] == 1){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}
if(PlacementArray[1] == 1 && PlacementArray[4] == 1){
  if(!Red && PlacementArray[7] == 0){
    PlacementArray[7] = 2;
    BM.hide();
    Red = true;
  }
}
if(PlacementArray[4] == 1 && PlacementArray[7] == 1){
  if(!Red && PlacementArray[1] == 0){
    PlacementArray[1] = 2;
    TM.hide();
    Red = true;
  }
}
if(PlacementArray[1] == 1 && PlacementArray[7] == 1){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}

if(PlacementArray[0] == 1 && PlacementArray[4] == 1){
  if(!Red && PlacementArray[8] == 0){
    PlacementArray[8] = 2;
    BR.hide();
    Red = true;
  }
}
if(PlacementArray[4] == 1 && PlacementArray[8] == 1){
  if(!Red && PlacementArray[0] == 0){
    PlacementArray[0] = 2;
    TL.hide();
    Red = true;
  }
}
if(PlacementArray[0] == 1 && PlacementArray[8] == 1){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}
if(PlacementArray[6] == 1 && PlacementArray[4] == 1){
  if(!Red && PlacementArray[2] == 0){
    PlacementArray[2] = 2;
    TR.hide();
    Red = true;
  }
  
  if(!Red && PlacementArray[0] == 0){
  PlacementArray[0] = 2;
  TL.hide();
  Red = true;
  }
  if(!Red && PlacementArray[1] == 0){
  PlacementArray[1] = 2;
  TM.hide();
  Red = true;
}else
if(!Red && PlacementArray[2] == 0){
  PlacementArray[2] = 2;
  TR.hide();
  Red = true;
}else
if(!Red && PlacementArray[3] == 0){
  PlacementArray[3] = 2;
  ML.hide();
  Red = true;
}else
if(!Red && PlacementArray[4] == 0){
  PlacementArray[4] = 2;
  MM.hide();
  Red = true;
}else
if(!Red && PlacementArray[5] == 0){
  PlacementArray[5] = 2;
  MM.hide();
  Red = true;
}else
if(!Red && PlacementArray[6] == 0){
  PlacementArray[6] = 2;
  MM.hide();
  Red = true;
}else
if(!Red && PlacementArray[7] == 0){
  PlacementArray[7] = 2;
  BL.hide();
  Red = true;
}else
if(!Red && PlacementArray[8] == 0){
  PlacementArray[8] = 2;
  BR.hide();
  Red = true;
}
}



if(PlacementArray[4] == 1 && PlacementArray[2] == 1){
  if(!Red && PlacementArray[6] == 0){
    PlacementArray[6] = 2;
    BL.hide();
    Red = true;
  }
}
if(PlacementArray[6] == 1 && PlacementArray[2] == 1){
  if(!Red && PlacementArray[4] == 0){
    PlacementArray[4] = 2;
    MM.hide();
    Red = true;
  }
}

//jesus im still not done yet?

if(!Red && PlacementArray[4] == 0){
  PlacementArray[4] = 2;
  MM.hide();
  Red = true;
}else
if(!Red && PlacementArray[4] == 1){
  PlacementArray[2] = 2;
  TR.hide();
  Red = true;
}

if(!Red && PlacementArray[5] == 0){
  PlacementArray[5] = 2;
  MR.hide();
  Red = true;
}else
if(!Red && PlacementArray[7] == 0){
  PlacementArray[7] = 2;
  BM.hide();
  Red = true;
}else

if(!Red && PlacementArray[1] == 0){
  PlacementArray[1] = 2;
  TM.hide();
  Red = true;
}else
if(!Red && PlacementArray[2] == 0){
  PlacementArray[2] = 2;
  TR.hide();
  Red = true;
}else
if(!Red && PlacementArray[3] == 0){
  PlacementArray[3] = 2;
  ML.hide();
  Red = true;
}else
if(!Red && PlacementArray[4] == 0){
  PlacementArray[4] = 2;
  MM.hide();
  Red = true;
}else
if(!Red && PlacementArray[6] == 0){
  PlacementArray[6] = 2;
  BL.hide();
  Red = true;
}else
if(!Red && PlacementArray[8] == 0){
  PlacementArray[8] = 2;
  BR.hide();
  Red = true;
}

}
//>======================================================================================================================================<//
void topleft(){
  if(Red && PlacementArray[0] == 0){Red = false;PlacementArray[0] = 1;} 
  if(!Red && PlacementArray[0] == 0){Red = true;PlacementArray[0] = 2;}
  TL.hide();
}
void topmiddle(){
  if(Red && PlacementArray[1] == 0){Red = false;PlacementArray[1] = 1;}
  if(!Red && PlacementArray[1] == 0){Red = true;PlacementArray[1] = 2;}
  TM.hide();
}
void topright(){
  if(Red && PlacementArray[2] == 0){Red = false;PlacementArray[2] = 1;}
  if(!Red && PlacementArray[2] == 0){Red = true;PlacementArray[2] = 2;}
  TR.hide();
}
void middleleft(){
  if(Red && PlacementArray[3] == 0){Red = false;PlacementArray[3] = 1;} 
  if(!Red && PlacementArray[3] == 0){Red = true;PlacementArray[3] = 2;}
  ML.hide();
}
void middle(){
  if(Red && PlacementArray[4] == 0){Red = false;PlacementArray[4] = 1;}
  if(!Red && PlacementArray[4] == 0){Red = true;PlacementArray[4] = 2;}
  MM.hide();
}
void middleright(){
  if(Red && PlacementArray[5] == 0){Red = false;PlacementArray[5] = 1;}
  if(!Red && PlacementArray[5] == 0){Red = true;PlacementArray[5] = 2;}
  MR.hide();
}
void bottomleft(){
  if(Red && PlacementArray[6] == 0){Red = false;PlacementArray[6] = 1;} 
  if(!Red && PlacementArray[6] == 0){Red = true;PlacementArray[6] = 2;}
  BL.hide();
}
void bottommiddle(){
  if(Red && PlacementArray[7] == 0){Red = false;PlacementArray[7] = 1;}
  if(!Red && PlacementArray[7] == 0){Red = true;PlacementArray[7] = 2;}
  BM.hide();
}
void bottomright(){
  if(Red && PlacementArray[8] == 0){Red = false;PlacementArray[8] = 1;}
  if(!Red && PlacementArray[8] == 0){Red = true;PlacementArray[8] = 2;}
  BR.hide();
}

void keyPressed(){
  if(key == 'r'){
    winner = false;
    Red = true;
    TL.show();
    TM.show();
    TR.show();
    ML.show();
    MM.show();
    MR.show();
    BL.show();
    BM.show();
    BR.show();
    for(int i = 0; i < PlacementArray.length; i++){
      PlacementArray[i] = 0;
    }
  }
}
