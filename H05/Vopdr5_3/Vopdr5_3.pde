float FLengte = 1.85;
float FGewicht = 75;
String SGewicht = "met een gewicht van";
String SLengte = "en een lengte van";
String SBMI = "is jouw BMI";

float FBMI = FGewicht/(FLengte * FLengte);

print(SGewicht +" "+ FGewicht + "kg, ");
print(SLengte +" "+ FLengte + "cm, ");
print(SBMI +" "+ FBMI + ".");
