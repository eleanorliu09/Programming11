void gameover() {
  background(gameOverBlue);
  
  fill(queenBlue);
  textSize(40);
  text("Game Over", width/2, 60);
  text("You have returned to Earth", width/2, 110);
  fill(forestGreen);
  rect(width/2, 550, width, 100);
  
  player1.show();
  //player1.act();
  player1.bounce();
  
}

void gameoverClicks() {
}
