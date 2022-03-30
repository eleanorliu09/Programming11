void gameover() {
  background(lightpink);

  if (score > maxScore) {
    maxScore = score;
  }
  fill(pink);
  strokeWeight(0);
  stroke(hotpink);
  rect(400, 400, 250, 100);
  rect(400, 570, 250, 100);

  fill(hotpink);
  text("GAME OVER", 400, 100);
  text("Best Score: " + maxScore, 400, 240);
  text("Try again", 400, 390);
  text("Options", 400, 560);

  tactileTryAgain(400, 400, 250, 100);
  tactileTryAgain(400, 570, 250, 100);
}

void gameoverClicks() {
  if (mouseX > 275 && mouseX < 525 && mouseY > 350 && mouseX < 450) {
    mode = INTRO;
    lives = 3;
    score = 0;
  }
    if (mouseX > 275 && mouseX < 525 && mouseY > 445 && mouseX < 695) {
    mode = OPTIONS;
    lives = 3;
    score = 0;
  }
}

void tactileTryAgain(int a, int b, int c, int d) {
  if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2)) {
    strokeWeight(5);
    stroke(hotpink);
    fill(pink, 50);
    rect(a, b, c,d);

  }
}
