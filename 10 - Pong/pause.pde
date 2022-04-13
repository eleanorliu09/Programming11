void pause() {

  if (framecount > 0) {
    stroke(255, 255, 255, 200);
    fill(255, 255, 255, 200);
    rect(0, 0, width, height);
  }

  framecount--;

  fill(lilac);
  textSize(80);
  text("Paused", width/2, height/2 - 150);
  fill(grey);
  stroke(255, 255, 255);
  strokeWeight(3);
  square(325, 525, 50);
  image(play, 330, 530, 40, 40);
  square(425, 525, 50);
  image(options, 430, 530, 40, 40);
  tactilePause(325, 525, 50, 50);
  tactilePause(425, 525, 50, 50);
}

void pauseClicks() {
  if (mouseX > 325 && mouseY > 525 && mouseY < 575 && mouseX <375) {
    mode = GAME;
  }
  if (mouseX > 425 && mouseY > 525 && mouseY < 575 && mouseX < 475) {
    mode = OPTIONS;
  }
  framecount = 1;
}

void tactilePause(int a, int b, int c, int d) {
  if (mouseX > a && mouseX < a + c && mouseY > b && mouseY < b + d) {
    fill(yellow, 100);
    stroke(yellow, 100);
    strokeWeight(3);
    rect(a, b, c, d);
  }
}
