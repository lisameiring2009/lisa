int totaalAantalLessen =20;
int gevolgdeLessen = 17;
float cijfer = 7;

float percentagelessengevolgd = (float) gevolgdeLessen / totaalAantalLessen* 100;
 
 if(cijfer >= 5.5 && percentagelessengevolgd >=80){
   println("geslaagd");
 } else{ 
   println("gezakt");
 }
