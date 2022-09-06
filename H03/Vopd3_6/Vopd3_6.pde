size(1000,400);
background(230,230,230);

line(10,30,310,30);
rect(10,70,300,130);
rect(10,240,300,130 ,12,12,12,12);

fill(255,0,255);
rect(320,70,300,130);
ellipse(470,135,300,130);
ellipse(470,305,300,130);

arc(800,135,300,130,1.67*PI,2*PI);

noFill();
ellipse(800,135,300,130);
ellipse(800,305,130,130);

fill(0,0,0);
text("Lijn", 150,50);
text("Vierkant", 150,220);
text("Vierkant met ronde randen", 100,390);

text("Vierkant met ovaal", 415,220);
text("Gevuld ovaal", 440,390);

text("Taartpunt met ovaal", 750,220);
text("Cirkel", 780,390);
