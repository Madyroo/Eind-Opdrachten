

void GameOver() {
  background(0);
  knop1.show();
  knop3.show();

  fill(255);
  textSize(80);
  textAlign(CENTER, CENTER);
  text("GAME OVER", width /2, height /2 -250);
  textFont(font);

  img = loadImage("cigar.jpg");
  imageMode(CENTER);
  image(img, width / 2, height /2 +450 );

  img = loadImage("dance.jpg");
  imageMode(CENTER);
  image(img, width / 2, height /2 -250 );

  int r = floor(random(256));
  int g = floor(random(256));
  int b = floor(random(256));

  fill(r, g, b);
  if (GetAmountOfTiles(1) > GetAmountOfTiles(2)) {
    text("ROOD IS TOP G", width /2, height /2 -350);
  } else {
    text("BLAUW IS TOP G", width /2, height /2 -350);
  }
}

void Knop1() {
  reset = true;
  gameState = 1;
  startTijd = sec + 30;
}
void Knop3() {
  reset = true;
  gameState = 0;
}



//reset = true
//gamestate = 1;
