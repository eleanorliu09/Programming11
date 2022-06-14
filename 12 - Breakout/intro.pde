void intro() {
  theme.play();
  background(introColor);
  textSize(80);
  colorText(gameName, nameX, 100);

  hue += 5;
  if (hue > 256) hue = 0;

  fill(brickColor[0]);
  rect(width/2, 230, 180, 70);
  rect(width/2, 320, 220, 70);
  fill(brickColor[3]);
  text("Play", width/2, 230);
  text("Themes", width/2, 320);
}

void introClicks() {
  if (mouseX > 210 && mouseX < 390 && mouseY > 195 && mouseY < 265) {
    mode = GAME;
    timecount = 0;
  }
  if (mouseX > 190 && mouseX < 410 && mouseY > 285 && mouseY < 355) {
    mode = OPTIONS;
    prevMode = INTRO;
  }
}

void colorText(String msg, int x, int y) {
  int temph = hue;
  for (int i = 0; i < msg.length(); i++) {
    String letter = msg.substring(i, i+1);
    fill( (temph % 256), 200, 200);
    text(letter, x, y);
    temph += 5;
    x += 30;
  }
}
