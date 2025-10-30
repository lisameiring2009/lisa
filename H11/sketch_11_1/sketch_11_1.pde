int[] mijnStapelGetallen;

void setup() {
  mijnStapelGetallen = new int[26]; 


  for (int i = 0; i < mijnStapelGetallen.length; i++) {
    mijnStapelGetallen[i] = i;
  }

 for (int i = 0; i < mijnStapelGetallen.length; i++) {
    println("mijnStapelGetallen[" + i + "] = " + mijnStapelGetallen[i]);
  }
}
