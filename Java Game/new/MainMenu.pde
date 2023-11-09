
void MainMenu() {
  background(0, 0, 0);
  textSize(80);
  int r = floor(random(256));
  int g = floor(random(256));
  int b = floor(random(256));
  fill(r, g, b);
  textAlign(CENTER, CENTER);
  text("The Top G Game", width /2, height /2 -250);
  textFont(font);

  knop2.show();
  knop1.hide();
  knop3.hide();

  rect(400, 510, 1120, 560);
  rect(300, 250, 70, 70);
  img = loadImage("smoke.jpg");
  imageMode(CENTER);
  image(img, width / 2, height /2 +250 );
}

void Knop2() {
  reset = true;
  gameState = 1;
  startTijd = sec + 30;
}
