void pause() {

  if (framecount > 0) {
    fill(255, 255, 255, 200);
    rect(0, 0, width, height);
  }

  framecount--;

  fill(lilac);
  textSize(80);
  text("Paused", width/2, height/2 - 150);
  fill(grey);
  square(325, 525, 50);
  image(play, 330, 530, 40, 40);
  square(425, 525, 50);
  image(options, 430, 530, 40, 40);
}

void pauseClicks() {
  mode = GAME;
  framecount = 1;
}
