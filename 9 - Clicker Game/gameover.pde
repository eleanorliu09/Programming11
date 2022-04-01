void gameover() {
  gameover.play();
  background(lightpink);

  if (score > maxScore) {
    maxScore = score;
  }

  fill(hotpink);
  text("GAME OVER", 400, 100);
  text("Best Score: " + maxScore, 400, 200);

  fill(pink);
  strokeWeight(0);
  stroke(hotpink);
  rect(400, 320, 250, 100);
  rect(400, 440, 250, 100);
  rect(400, 560, 250, 100);
  rect(400, 680, 250, 100);

  fill(hotpink);
  text("Try again", 400, 320);
  text("Options", 400, 440);
  text("Reset", 400, 560);
  text("Exit", 400, 680);

  tactileTryAgain(400, 320, 250, 100);
  tactileTryAgain(400, 440, 250, 100);
  tactileTryAgain(400, 560, 250, 100);
  tactileTryAgain(400, 680, 250, 100);
  speedInc = 1;
  lives = 3;
  score = 0;
}

void gameoverClicks() {
  if (mouseX > 275 && mouseX < 525 && mouseY > 270 && mouseY < 370) {
    mode = INTRO;
  }
  if (mouseX > 275 && mouseX < 525 && mouseY > 390 && mouseY < 490) {
    mode = OPTIONS;
  }
  if (mouseX > 275 && mouseX < 525 && mouseY > 510 && mouseY < 610) {
    mode = INTRO;
    maxScore = 0;
  }
  if (mouseX > 275 && mouseX < 525 && mouseY > 630 && mouseY <730) {
    exit();
  }
}

void tactileTryAgain(int a, int b, int c, int d) {
  if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2)) {
    strokeWeight(5);
    stroke(hotpink);
    fill(pink, 50);
    rect(a, b, c, d);
  }
}
