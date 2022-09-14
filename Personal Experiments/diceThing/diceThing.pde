import controlP5.*;

ControlP5 cp;
Textfield Amount;

Button Roll;

//texttonumber ints
String Input;
int Output;

//array ints
int[] resultArray = new int[6];
int Found1 = 0;
int Found2 = 0;
int Found3 = 0;
int Found4 = 0;
int Found5 = 0;
int Found6 = 0;

int Highest;

void setup(){
  //textfields and buttons
  size(400,400);
  background(0,0,0);
  
  cp = new ControlP5(this);
  
  Amount = cp.addTextfield("dice amount")
  .setSize(300,30).setPosition(50,30);
  
  Roll = cp.addButton("roll")
  .setSize(80,40).setPosition(160,80);
  
  fill(255,255,255);
  textSize(20);
}

void draw(){
  text("1's:",30,200);
  text("2's:",30,230);
  text("3's:",30,260);
  text("4's:",30,290);
  text("5's:",30,320);
  text("6's:",30,350);
}

void roll(){
  Input = Amount.getText();
  Output = int(Input);
  println(Output);
  
 int[] myArray = new int[Output];
 
 background(0,0,0);
 
  //reset before calc again
  Found1=0;
  Found2=0;
  Found3=0;
  Found4=0;
  Found5=0;
  Found6=0;
  
  resultArray[0]=0;
  resultArray[1]=0;
  resultArray[2]=0;
  resultArray[3]=0;
  resultArray[4]=0;
  resultArray[5]=0;
  
  //dice number finder
  for(int i = 0; i < myArray.length; i++){
    myArray[i] = round(random(1,6));
    if(myArray[i] == 1){
      Found1++;
    }
    if(myArray[i] == 2){
      Found2++;
    }
    if(myArray[i] == 3){
      Found3++;
    }
    if(myArray[i] == 4){
      Found4++;
    }
    if(myArray[i] == 5){
      Found5++;
    }
    if(myArray[i] == 6){
      Found6++;
    }
  }
  
  //percentage calc
  int a = round((Found1*100)/(Output));
  int b = round((Found2*100)/(Output));
  int c = round((Found3*100)/(Output));
  int d = round((Found4*100)/(Output));
  int e = round((Found5*100)/(Output));
  int f = round((Found6*100)/(Output));
  
  text(a + "%",150,200);
  text(b + "%",150,230);
  text(c + "%",150,260);
  text(d + "%",150,290);
  text(e + "%",150,320);
  text(f + "%",150,350);
  
  //results array
  resultArray[0]=Found1;
  resultArray[1]=Found2;
  resultArray[2]=Found3;
  resultArray[3]=Found4;
  resultArray[4]=Found5;
  resultArray[5]=Found6;
  
  text(resultArray[0],90,200);
  text(resultArray[1],90,230);
  text(resultArray[2],90,260);
  text(resultArray[3],90,290);
  text(resultArray[4],90,320);
  text(resultArray[5],90,350);
}
