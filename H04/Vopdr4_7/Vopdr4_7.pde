float C1 = 5.7;
float C2 = 9.3;
float C3 = 3.5;
float Gem = 0;

Gem = (C1 + C2 + C3)/3;

Gem *= 10;
Gem = round(Gem);
Gem /= 10;

println(C1);
println(C2);
println(C3);

println("Gemiddelde =", Gem);
