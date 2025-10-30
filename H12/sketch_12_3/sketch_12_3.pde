// class is de tekening van de spaarpot
// welke dingen kunnen er in: dus welke onderdelen
// wat kan je er mee doen
// de doos heet "bankacount"
class BankAccount {
  //de spaarpot heeft 3 dingen:
  // rekeningnummer
  // eigenaar
  // saldo
  String rekeningnummer;
  String eigenaar;
  float saldo;

  // Constructor
  // dit is de bouwtekening 
  // als je zegt new BankAccount("NL12345", "Alice", 1000)
  //dan wordt er een echte spaarpot gemaakt:
  //sticker = NL12345
  //baasje = Alice
  //er zit 1000 euro in
  BankAccount(String rekeningnummer, String eigenaar, float saldo) {
    this.rekeningnummer = rekeningnummer;
    this.eigenaar = eigenaar;
    this.saldo = saldo;
  }

  // Geld in de spaarpot stoppen
  //Als je zegt storten(500):
//check: is het bedrag positief?
//ja → stop het in de spaarpot (saldo += bedrag).
//print: “500 gestort. Nieuw saldo: 1500.”
//nee → zegt: “Bedrag moet positief zijn.”
  void storten(float bedrag) {
    if (bedrag > 0) {
      saldo += bedrag;
      println(bedrag + " gestort. Nieuw saldo: " + saldo);
    } else {
      println("Bedrag moet positief zijn.");
    }
  }

  // Geld uit de spaarpot halen
//  Als je zegt opnemen(200):
//check: is het bedrag positief?
//ja → check: zit er genoeg in de spaarpot?
//ja → haal het eraf (saldo -= bedrag).
//print: “200 opgenomen. Nieuw saldo: 1300.”
//nee → print: “Onvoldoende saldo. Kan niet opnemen.”
//nee → print: “Bedrag moet positief zijn.”
  void opnemen(float bedrag) {
    if (bedrag > 0) {
      if (saldo >= bedrag) {
        saldo -= bedrag;
        println(bedrag + " opgenomen. Nieuw saldo: " + saldo);
      } else {
        println("Onvoldoende saldo. Kan niet opnemen.");
      }
    } else {
      println("Bedrag moet positief zijn.");
    }
  }

  // kijken wat er nog in de spaarpot zit
  //Als je zegt toonSaldo():
//De spaarpot zegt:
//“Saldo van Alice: 1300.”
  void toonSaldo() {
    println("Saldo van " + eigenaar + ": " + saldo);
  }
}

//Voorbeeld gebruik 
//Dit zegt:
//“Ik wil een spaarpot maken met de naam rekening.”
//Maar er zit nog niks in.
BankAccount rekening;

//begin van het programma
//Wanneer het programma start:
//Maak een spaarpot voor Alice met 1000 euro.
//Stop er 500 euro bij → nu 1500.
//Haal er 200 euro uit → nu 1300.
//Probeer 2000 euro eruit te halen → kan niet, blijft 1300.
//Kijk in de spaarpot → “Saldo van Alice: 1300.”
void setup() {
  rekening = new BankAccount("NL12345", "Alice", 1000);
  
  rekening.storten(500);
  rekening.opnemen(200);
  rekening.opnemen(2000); // poging om rood te gaan
  rekening.toonSaldo();
}
// en uiteindelijk komt dit er dan uit
//500.0 gestort. Nieuw saldo: 1500.0
//200.0 opgenomen. Nieuw saldo: 1300.0
//Onvoldoende saldo. Kan niet opnemen.
//Saldo van Alice: 1300.0
