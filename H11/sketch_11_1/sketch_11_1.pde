//int [] mijnstapelgetallen;
//void setup (){
// mijnstapelgetallen= new int [26];
//println(mijnstapelgetallen);
//}

int[] mijnStapelGetallen;

void setup() {
  mijnStapelGetallen = new int[26]; // array van 26 ints

  // Vul de array met voorbeeldwaarden, bijvoorbeeld 0 t/m 25
  for (int i = 0; i < mijnStapelGetallen.length; i++) {
    mijnStapelGetallen[i] = i;
  }

  // Print de inhoud van de array
  for (int i = 0; i < mijnStapelGetallen.length; i++) {
    println("mijnStapelGetallen[" + i + "] = " + mijnStapelGetallen[i]);
  }
}
