PImage img;

int GetAmountOfTiles(int type) {
  int aantal = 0;
  for (int i = 0; i < maxAantal; i++) {
    if (tegels[i] == type) {
      aantal++;
    }
  }
  return aantal;
}

void GameSetup() {
  knop1.hide();
  knop2.hide();
  knop3.hide();
  frameRate(60);
  reset = false;

//playing field
  int row = 0;
  colW = (width/50) / 2;
  maxAantal = colW * (height/50);
  tegels = new int[maxAantal];
  p2y = maxAantal/colW -1;
  p2x = colW - 1;
  for (int i = 0; i < maxAantal; i++) {
    tegels[i] = 0;
    row = i/colW;
    stroke(0);
    fill(255);
    rect((i%colW)*50, row*50, 50, 50);
    fill(0);
    text(i + "", (i%colW)*50, row*50 + 50);
  }
}

void Game() {
  background(255);

//timer
  timer();
  MovePlayerTwo();
  MovePlayerOne();
  imageMode(BASELINE);
  img = loadImage("Tate.png");

  //  formule vakkjes
  image(img, 1100, 500);
  strokeWeight(1);
  fill(255);
  int row = 0;
  for (int i = 0; i < maxAantal; i++) {
    row = i/colW;
    if (tegels[i] == 1) {
      fill(255, 0, 0);
    } else if (tegels[i] == 2) {
      fill(0, 0, 255);
    } else {
      fill(255);
    }

    rect((i%colW)*50, row*50, 50, 50);
  }

  //score bord
  line(1000, 180, 1750, 180);
  fill(0, 0, 0);
  textSize(50);
  textAlign(BASELINE, BASELINE);
  textSize(20);
  text("player Rood: " + GetAmountOfTiles(1), 1000, 175);
  text("player Blauw: " + GetAmountOfTiles(2), 1400, 175);
  text("score", 1270, 100);

  //player 1 rood
  stroke(3);
  strokeWeight(3);
  fill(255, 0, 0);
  rect(p1x * 50, p1y * 50, 50, 50);
  tegels[((colW * p1y) + p1x)] = 1;

  //player 2 blauw
  stroke(3);
  strokeWeight(3);
  fill(0, 0, 255);
  rect((int)p2x * 50, p2y * 50, 50, 50);
  tegels[((colW * p2y) + (int)p2x)] = 2;
}

void MovePlayerOne() {
}

void MovePlayerTwo() {
}


void GameControl() {

  //rood
  if (keyCode == 65 && p1x > 0) {
    p1x -= 1;
  } else if (keyCode == 87 && p1y > 0) {
    p1y -= 1;
  } else if (keyCode == 68 && p1x < (colW - 1)) {
    p1x += 1;
  } else if (keyCode == 83 && p1y < (maxAantal / colW) - 1) {
    p1y += 1;
  }

  //blauw
  if (keyCode == 37 && p2x > 0) {
    p2x -= 1;
    //dirP2 = 3;
  } else if (keyCode == 38 && p2y > 0) {
    p2y -= 1;
  } else if (keyCode == 39 && p2x < (colW - 1)) {
    p2x += 1;
  } else if (keyCode == 40 && p2y < (maxAantal / colW) - 1) {
    p2y += 1;
  }
}
