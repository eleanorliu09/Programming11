void game() {
  background(darkblue);

  stroke(blue3);
  fill(blue3);
  rect(400, 0, width, 200);

  fill(blue2);
  stroke(blue2);
  rect(110, 50, 200, 70);
  rect(320, 50, 200, 70);
  rect(505, 50, 150, 70);
  rect(690, 50, 200, 70);
  fill(blue4);
  stroke(blue4);
  text("Score: " + score, 110, 50);
  text("Lives: " + lives, 320, 50);
  text("Pause", 505, 50);
  text("Options", 690, 50);

  // display target
  stroke(orange);
  strokeWeight(3);
  fill(yellow);
  circle(x, y, d);

  // moving 
  x = x + vx;
  y = y + vy;

  //bouncing

  if (x > width-50 || x < 50 ) { 
    vx = vx * -1;
    vy = random(-5, 5) * speedInc;
  } 
  if (y < 150 || y > height-50) {
    vy = vy * -1;
    vx = random(-5, 5) * speedInc;
  }
}

void gameClicks() {

  if ( dist(mouseX, mouseY, x, y) < 50) {
    score++;
    gain.rewind();
    gain.play();
  } else if (mouseY > 100) {
    lives--;
    speedInc*=1.1;
    loss.rewind();
    loss.play();
  }
  if (lives == 0) {
    mode = GAMEOVER;
  }

  //  rect(505, 50, 150, 70);
  if (mouseX > 430 && mouseX < 580 && mouseY > 15 && mouseY < 85) {
    mode = PAUSE;
  }
    if (mouseX > 590 && mouseX < 790 && mouseY > 15 && mouseY < 85) {
    mode = OPTIONS;
  }
}
