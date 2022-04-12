void gameover() {

  gameovercount --;
  background(gameoverblue);
  fill(introyellow);
  textSize(80);
  text("GAME OVER!", width/2, 100);

  textSize(40);
  fill(pink);
  text("Player 1: " + leftScore, 0.3*width, 175);
  fill(green);
  text("Player 2: " + rightScore, 0.7*width, 175);

  fill(overorange);
  textSize(90);
  if (rightScore == leftScore) {
    text("It's a tie!", width/2, 275);
  } else if (rightScore > leftScore) {
    text("Player 2 Wins!", width/2, 275);
  } else if (leftScore > rightScore) {
    text("Player 1 Wins!", width/2, 275);
  }

  fill(darkblue2);
  strokeWeight(0);
  rect(300, 300, 200, 100);
  fill(introskyblue);
  textSize(45);
  text("Try Again", 400, 362);

  fill(grey);
  stroke(255);
  strokeWeight(5);
  square(725, 525, 50);
  image(stop, 730, 530, 40, 40);
}

void gameoverClicks() {
  println(mouseX + " " + mouseY);
  if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {
    mode = INTRO;
    leftScore = rightScore = 0;
    gameovercount = 180;
  }

  if ( mouseX > 730 && mouseX < 770 && mouseY > 530 && mouseY < 570) {
    exit();
  }
}
