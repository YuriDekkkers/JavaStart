int MilliSec;
int Sec;
int Min;
boolean Started = false;

void setup(){
  size(120,80);
  background(255,255,255);
}

void draw(){
  if(Started){
    MilliSec++;
  }
  
  if(MilliSec == 60){
    MilliSec = 0;
    Sec++;
  }
  if(Sec == 60){
    Sec = 0;
    Min++;
  }
  background(255,255,255);
  fill(0,0,0);
  textSize(20);
  text(nf(Min,2) + ":"+ nf(Sec,2) +":"+ nf(MilliSec,2),10,45);
  
  println(keyCode);
}

void keyPressed(){
  if(keyCode == 32 && !Started){
    Started = true;
  }else if(keyCode == 32 && Started){
    Started = false;
  }

  //reset stopwatch
  if(key == 'r'){
    MilliSec = 0;
    Sec = 0;
    Min = 0;
  }
}
