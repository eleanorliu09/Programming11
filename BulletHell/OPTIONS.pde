void options() {

  background(darkviolet);

  fill(greypurple);
  textSize(40);
  text("Build Your Starfighter", width/2, 50);

  image(starfighterImgs.get(0), 300, 150, starfighterNums.get(0) * 80, 80);
  image(starfighterImgs.get(1), 475, 150, starfighterNums.get(1) * 80, 80);

  optionsTactile(300, 150, starfighterNums.get(0) * 80, 80);
  optionsTactile(475, 150, starfighterNums.get(1) * 80, 80);
}

void optionsClicks() {

  if (mouseX > 228 && mouseX < 372 && mouseY > 110 && mouseY < 190) {
    currStarfighter = 0;
    mode = GAME;
  } else   if (mouseX > 421.4 && mouseX < 538.6 && mouseY > 110 && mouseY < 190) {
    currStarfighter = 1;
    mode = GAME;
  }
}

void optionsTactile(int x, int y, float w, float h) {

  if (mouseX > x - (w/2) && mouseX < x + (w/2) && mouseY > y - (h/2) && mouseY < y + (h/2)) {
    fill(canary, 100);
    noStroke();
    rect(x, y, w+20, h+20);
  }
}
