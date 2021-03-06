void gameover() {
  isProtected = false; 
  if (score > highScore) highScore = score;

  background(gameOverBlue);

  fill(queenBlue);
  textSize(40);
  text("Game Over", width/2, 60);
  text("You have returned to Earth", width/2, 110);
  fill(forestGreen);
  rect(width/2, 550, width, 100);
  textSize(20);
  fill(darkpurple);
  text("Press the space bar to experience gravity", width/2, 150);
  
  fill(lilac);
  text("Score: " + score, width/2, 180);
  text("High Score: " + highScore, width/2, 200);

  player1.show();
  player1.act();
  player1.bounce();
}

void gameoverClicks() {
  mode = INTRO;
  obj.remove(player1);
  setup();
}
