float lengte = 1.75;
int gewicht = 82;
float BMI = 0;
int leeftijd = 82;

BMI = gewicht/(lengte * lengte);

size(200,200);

rect(10,30,70,30 ,6,6,6,6);
fill(0,0,0);
text("L:",20,50);
text(lengte,30,50);

fill(255,255,255);
rect(10,60,70,30 ,6,6,6,6);
fill(0,0,0);
text("G:",20,80);
text(gewicht,35,80);

fill(255,255,255);
rect(10,90,70,30 ,6,6,6,6);
fill(0,0,0);
text("J:",20,110);
text(leeftijd,35,110);

//kinderen onder 19//
if(leeftijd < 19){
  fill(125,125,125);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150);
}
//voor 19-69
else if(leeftijd < 69 && BMI < 18.5){
  fill(255,200,20);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150);  
  text("ondergewicht",65,175);
}else if(leeftijd < 69 && BMI < 25){
  fill(0,255,0);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150);  
  text("gezond",80,175);
}else if(leeftijd < 69 && BMI < 30){
  fill(255,200,0);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150); 
  text("overgewicht",69,175);
}else if(leeftijd < 69 && BMI > 30){
  fill(255,20,20);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150);  
  text("enstig overgewicht",55,175);
}
//voor 70+//
else if(leeftijd >= 69 && BMI < 22){
  fill(255,200,20);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150);  
  text("ondergewicht",65,175);
}else if(leeftijd >= 69 && BMI < 28){
  fill(0,255,0);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150);  
  text("gezond",80,175);
}else if(leeftijd >= 69 && BMI < 30){
  fill(255,200,0);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150); 
  text("overgewicht",69,175);
}else if(leeftijd >= 69 && BMI > 30){
  fill(255,20,20);
  rect(65,130,70,30 ,6,6,6,6);
  fill(0,0,0);
  text(BMI,75,150);  
  text("enstig overgewicht",55,175);
}
