void pause() {
  strokeWeight(0);
  
  if (pausefc > 0) {
    fill(255, 0, 255, 200);
    strokeWeight(0);
    rect(width/2, height/2, width, height);
    pausefc --;
  }

  fill(lilac);
  textSize(80);
  strokeWeight(0);
  text("Paused", width/2, height/2 - 50);

  fill(grey);
  strokeWeight(0);
  square(520, 570, 40);
  image(options, 520, 570, 30, 30);
  tactilePause(520, 570, 30, 30);

  fill(grey);
  strokeWeight(0);
  square(570, 570, 40);
  image(play, 570, 570, 30, 30);
  tactilePause(570, 570, 30, 30);
}

void tactilePause(int a, int b, int c, int d) {
  if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2)) {
    fill(yellow, 100);
    strokeWeight(0);
    rect(a, b, c+15, d+15);
  }
}

void pauseClicks() {
  if (mouseX > 500 && mouseY > 550 && mouseY < 590 && mouseX < 540) {
    mode = OPTIONS;
  }
  if (mouseX > 550 && mouseY > 550 && mouseY < 590 && mouseX < 590) {
    mode = GAME;
  }
}
