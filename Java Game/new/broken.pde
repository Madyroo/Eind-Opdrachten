int colW;
int maxAantal;
int[] tegels;

int p1x = 0;
int p1y = 0;
float p2x;
int p2y;

int counter ;
int sec;
int aftellen;
int startTijd;

int gameState = 0;
boolean reset = false;

int AantalRood = 0;
int AantalBlauw = 0;
int theMode = 0;

PFont font;

import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;
Button knop3;

void setup() {
  fullScreen();
  frameRate(5);

  font = createFont("Press Start 2P", 50);

  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1").setPosition(colW + 1000, 400).setSize(200, 100).setCaptionLabel("Try Again!");
  knop1.hide();
  cp.getController("Knop1").setColorForeground(color(255, 0, 0));

  knop2 = cp.addButton("Knop2").setPosition(colW + 850, 400).setSize(200, 100).setCaptionLabel("Play game!");
  cp.getController("Knop2").setColorForeground(color(255, 0, 0));

  knop3 = cp.addButton("Knop3").setPosition(colW + 750, 400).setSize(200, 100).setCaptionLabel("Return To home Screen");
  knop3.hide();
  cp.getController("Knop3").setColorForeground(color(255, 0, 0));


  sec =  millis()/1000;
  startTijd = sec + 30;
}
// Game menu's switcher
void draw() {

  if (gameState == 0) {
    MainMenu();
  } else if (gameState == 1) {
    if (reset) {
      GameSetup();
    }
    Game();
  } else if (gameState == 2) {
    GameOver();
  }
}


void keyPressed() {
  if (gameState == 1) {
    GameControl();
  }
}



//tijd formule
void timer() {

  sec =  millis()/1000;
  aftellen = startTijd - sec;

  fill(0);
  text("Seconde " + aftellen, 1250, 300);

  if (aftellen <= 0) {
    gameState = 2;
  }
}

void knop2() {
  reset = true;
  gameState = 1;
  startTijd = sec + 30;
}
