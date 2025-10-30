int x1 = 270; // beginpositie x van de kip
int y1 = 565; // beginpositie y van de kip


int x2 = 0;
int y2 = 250;

int x3 = 0;
int y3 = 200;

int x4 = 0;
int y4 = 150;

int x5 = 0;
int y5 = 100;

int x6 = 0;
int y6 = 50;

int x7 = 0;
int y7 = 300;

int x8 = 0;
int y8 = 350;

int x9 = 0;
int y9 = 400;

int x10 = 0;
int y10 = 450;

PImage kip;
PImage porsche;
PImage coin;

int score = 0;
boolean gestart = false;
boolean gameOver = false;

boolean checkBotsing(float xA, float yA, float wA, float hA,
  float xB, float yB, float wB, float hB) {
  return xA < xB + wB &&
    xA + wA > xB &&
    yA < yB + hB &&
    yA + hA > yB;
}

boolean gewonnen = false;

void setup() {
  size(625, 625);

  kip = loadImage("kippetje.png");
  porsche = loadImage("porsche.png");

  textAlign(CENTER, CENTER);
  textSize(32);
}
void draw() {
  background(90, 200, 210);


  if (!gestart) {
    text("Klik om te beginnen", width/2, height/2);
    return;
  } else if (gameOver) {
    text("GAME OVER!\nKlik om opnieuw te starten", width/2, height/2);
    return;
  }

  if (gewonnen) {
    text("GEWONNEN!\nKlik om opnieuw te spelen", width/2, height/2);

    return; // stopt alles
  }
  x2 += 3;
  if (x2 > width) x2 = -110;
  x3 += 2;
  if (x3 > width) x3 = -110;
  x4 += 4;
  if (x4 > width) x4 = -110;
  x5 += 2;
  if (x5 > width) x5 = -110;
  x6 += 3;
  if (x6 > width) x6 = -110;
  x7 += 4;
  if (x7 > width) x7 = -110;
  x8 += 3;
  if (x8 > width) x8 = -110;
  x9 += 4;
  if (x9 > width) x9 = -110;
  x10 += 3;
  if (x10 > width) x10 = -110;


  // autoweg
  stroke(0, 0, 0);
  strokeWeight(10);
  line(0, 500, 640, 500);
  line(0, 450, 640, 450);
  line(0, 400, 640, 400);
  line(0, 350, 640, 350);
  line(0, 300, 640, 300);
  line(0, 250, 640, 250);
  line(0, 200, 640, 200);
  line(0, 150, 640, 150);
  line(0, 100, 640, 100);
  line(0, 55, 640, 55);

  // auto's tekenen
  image(porsche, x2, y2, 95, 55);
  image(porsche, x3, y3, 95, 55);
  image(porsche, x4, y4, 95, 55);
  image(porsche, x5, y5, 95, 55);
  image(porsche, x6, y6, 95, 55);
  image(porsche, x7, y7, 95, 55);
  image(porsche, x8, y8, 95, 55);
  image(porsche, x9, y9, 95, 55);
  image(porsche, x10, y10, 95, 55);
  // kip tekenen
  image(kip, x1, y1, 60, 60);

  // score weergeven
  fill(0);
  text("Score: " + score, width - 80, 30);
  //  if ik win dan aanpassen



  // botsing checken
  if (!gameOver) {

    float[] autoX = {x2, x3, x4, x5, x6, x7, x8, x9, x10};
    float[] autoY = {y2, y3, y4, y5, y6, y7, y8, y9, y10};
    float[] autoW = {95, 100, 95, 100, 100, 95, 95, 95, 95};
    float[] autoH = {55, 60, 55, 60, 60, 55, 55, 55, 55};


    for (int i = 0; i < autoX.length; i++) {

      if (checkBotsing(x1, y1, 50, 50, autoX[i], autoY[i], autoW[i], autoH[i])) {
        gameOver = true;
      }
    }
  }
  if (!gameOver && !gewonnen) {
    if (y1 <= 0) {
      score = score + 1;// als de kip helemaal bovenaan is
      gewonnen = true;
    }
  }
  // Game Over tekst
  if (gameOver) {
    text("GAME OVER!", width/2, height/2);
    score = 0;
    return; // stopt alles na botsing
  }
}


void keyPressed() {
  if (!gestart || gameOver) return; // niks doen als niet gestart of game over
  if (keyCode == UP) y1 -= 20;
  else if (keyCode == DOWN) y1 += 20;
  else if (keyCode == LEFT) x1 -= 20;
  else if (keyCode == RIGHT) x1 += 20;
}


void mousePressed() {
  if (!gestart) {
    gestart = true; // start het spel
  } else if (gameOver || gewonnen) { // nu ook gewonnen check
    // reset alles naar beginwaarden
    x1 = 270;
    y1 = 565;
    x2 = 0;
    y2 = 250;
    x3 = 0;
    y3 = 200;
    x4 = 0;
    y4 = 150;
    x5 = 0;
    y5 = 100;
    x6 = 0;
    y6 = 50;
    x7 = 0;
    y7 = 300;
    x8 = 0;
    y8 = 350;
    x9 = 0;
    y9 = 400;
    x10 =0;
    y10 = 450;

    gameOver = false;
    gewonnen = false;
  }
}
