void gameover() {
  background(gameOverBlue);
  
  fill(queenBlue);
  textSize(40);
  text("Game Over", width/2, 60);
  text("You have returned to Earth", width/2, 110);
  fill(forestGreen);
  circle(width/2, 900, 900);
}

void gameoverClicks() {
}
