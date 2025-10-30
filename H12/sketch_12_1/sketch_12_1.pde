// recept voor rechthoek 
class Rectangle {
  //stukjes info die de rechthoek nodig heeft
  float width;
  float height;
  float x;
  float y;

  // dit zijn de maatjes en plekjes voor het rechthoek
  Rectangle(float w, float h, float xPos, float yPos) {
    width = w;
    height = h;
    x = xPos;
    y = yPos;
  }

  // Methode om de rechthoek te tekenen
  void drawRect() {
    rect(x, y, width, height);
  }
}

// ik wil de rechthoek reseveren en ga hem benoemen
Rectangle rect1;

// size(400, 400) is het doek waarop we gaan tekenen
//en bij rect1 maken we het echt
void setup() {
  size(400, 400);
  rect1 = new Rectangle(100, 50, 50, 50);
}

//met background maak je het schemr grijs 
//met rect1.drawRect(); zeg je tegen de rechthoek maak jezelf
void draw() {
  background(200);
  rect1.drawRect();
}
