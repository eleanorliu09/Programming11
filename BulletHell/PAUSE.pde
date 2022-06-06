void pause() {
  image(gamescreen, width/2, height/2, width, height);

  strokeWeight(0);
  fill(255, 0, 255, 150);
  strokeWeight(0);
  rect(width/2, height/2, width, height);


  fill(lilac);
  textSize(80);
  text("Paused", width/2, height/2 - 50);
}

void pauseClicks() {
  mode = GAME;
}
