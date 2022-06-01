void gameover() {
  background(gameOverBlue);
  
  fill(queenBlue);
  textSize(40);
  text("Game Over", width/2, 60);
  text("You have returned to Earth", width/2, 110);
  fill(forestGreen);
  rect(width/2, 550, width, 100);
  textSize(20);
  text("Press the space bar to bounce", width/2, 150);
  
  player1.show();
  player1.act();
  player1.bounce();
  
}

void gameoverClicks() {
}
