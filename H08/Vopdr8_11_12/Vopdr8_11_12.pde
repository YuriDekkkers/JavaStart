size(400,400);
background(255,255,255);

for(int x = 0; x < 8; x++){
  for(int y = 0; y < 8; y++){
    if((x+y) % 2 == 0){
      fill(255,255,255);
      rect(x * 40 + 40,y * 40 + 40,40,40);
    }else{
      fill(0,0,0);
      rect(x * 40 + 40,y * 40 + 40,40,40);
    }
  }
}
