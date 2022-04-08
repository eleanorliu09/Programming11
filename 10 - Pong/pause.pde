void pause() {

  if (framecount > 0) {
    fill(255, 255, 255, 200);
    rect(0, 0, width, height);
  }

  framecount--;
}

void pauseClicks() {
mode = GAME;
framecount = 1;
}
