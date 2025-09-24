int mijnGetal;

void setup(){
  mijnGetal = gemiddelde (10,6);
  println(mijnGetal);
}

void draw(){
}

int gemiddelde (int getal, int getaltwee){
  int totaal = getal + getaltwee;
  int gem= totaal / 2;
  return gem;
}
