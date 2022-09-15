import processing.sound.*;

SoundFile file;

void setup(){
  file = new SoundFile(this, "BetterRockSaul.wav");
  file.play();
  file.amp(0.01);
}

void draw(){

}
