int totaalAantalLessen =20;
int gevolgdeLessen = 16;
float cijfer = 5.5;

float percentagelessengevolgd = (float) gevolgdeLessen / totaalAantalLessen* 100;
 
 if(cijfer >= 5.5 && percentagelessengevolgd >=80){
   println("geslaagd");
 } else{ 
   println("gezakt");
 }
