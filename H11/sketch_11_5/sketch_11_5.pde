String[] namen = {"pieter","jan", "klaasje", "bart"};

void setup() {
  boolean gevonden = false; 

  for (int i = 0; i < namen.length; i++) {
    if (namen[i].equals("jan")) { 
      gevonden = true;
      break;
    }
  }

  println(gevonden); 
}
