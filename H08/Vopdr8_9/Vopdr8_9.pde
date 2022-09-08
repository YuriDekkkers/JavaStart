size(600,600);
background(255,255,255);

int sizeC = 500;

for(int i = 0; i < 50; i++){
  ellipse(600 - sizeC/2,sizeC/2,sizeC,sizeC);
  sizeC -= 10;
  println(i);
}
