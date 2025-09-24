float y1 = 500;
float x2 = 0;

void setup() {
  size (500, 500);
}

void draw() {
  background(255, 200, 255);
  y1 = y1 - 5;
  x2 = x2 + 5;
  ellipse(200, y1, 30, 30);
  ellipse(150, y1, 30, 30);
  line(x2, 60, x2+100, 60);



  //if (mousePressed && mouseButton == LEFT) {
  fill(255, 255, 255);
  ellipse(10, mouseY, 50, 50);
  //}




  if (y1<=0) {
    y1 = width;

    if (x2 <=width) {
      x2 = 0;
    }
  }
}
