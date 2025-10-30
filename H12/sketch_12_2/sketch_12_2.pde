// class person= de doos waar we iemand in stoppen
// in dit geval is het: naam, leeftijd en geslacht
class Person {
  // onderdelen
  String naam;
  int leeftijd;
  String geslacht;

  // doosje vullen met de naam, leeftijd en geslacht
  Person(String naam, int leeftijd, String geslacht) {
    this.naam = naam;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }

  // de knop op de doos maken 
  // als je op de knop drukt, zegt de doos wat er in zit
  // hij laat dus de naam, leeftijd en geslacht zien 
  void toonInfo() {
    println("Naam: " + naam);
    println("Leeftijd: " + leeftijd);
    println("Geslacht: " + geslacht);
  }
}

// hier maken we echt de doos 
// persoon = new person("lisa, 16, "vrouw");
// de doos krijgt dus de naam "lisa", leeftijd 16, en geslacht "vrouw"
// dan drukken we op de toon-knop oftwel: persoon.tooninfo();
void setup() {
  Person persoon = new Person("Lisa", 16, "vrouw");
  persoon.toonInfo();
}
// en dan zegt de computer dit:
//Naam: Lisa
//Leeftijd: 16
//Geslacht: vrouw
