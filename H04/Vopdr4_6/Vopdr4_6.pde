float S = 374615010;
float M = 0;
float H = 0;
float D = 0;
float Y = 0;

M = S/60;
H = M/60;
D = H/24;
Y = D/365;

println("seconds", S);
println("minutes", M);
println("Hours", H);
println("days", D);
println("years", Y);

println(S,"seconds =", Y, "years");

Y = 1;

S = Y*365*24*60*60;

println("or,", Y, "years =", S, "seconds");
