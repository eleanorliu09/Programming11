void gameover() {
  background(gameBackground);
  textSize(40);
  fill(brickColor[0]);
  text("You have completed the game in:", width/2, 50);
  textSize(70);
  fill(brickColor[2]);
  text(finalscore, width/2, 85);
  textSize(40);
  fill(brickColor[0]);
  text("seconds.", width/2, 125);

  textSize(70);
  fill(brickColor[1]);
  text("Congratulations!.", width/2, 170);
}

void gameoverClicks() {
}
