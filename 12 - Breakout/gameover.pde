void gameover() {
  background(gameBackground);
  textSize(40);
  fill(brickColor[4]);
  text("You have completed the game in:", width/2, 50);
  textSize(70);
  fill(brickColor[2]);
  text(finalscore / 60, width/2, 85);
  textSize(40);
  fill(brickColor[4]);
  text("seconds.", width/2, 125);

  textSize(70);
  fill(brickColor[1]);
  text("Congratulations!", width/2, 170);

  fill(brickColor[0]);
  rect(width/2, 280, 290, 70);
  fill(brickColor[3]);
  text("Play Again", width/2, 270);
}

void gameoverClicks() {
  if (mouseX > 155 && mouseX < 445 && mouseY > 245 && mouseY < 315) {
    setup();
  }
}
