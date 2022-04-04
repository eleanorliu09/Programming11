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
  stroke(0);
  strokeWeight(3);
  fill(currColor);
  circle(x, y, d);

  // moving 
  x = x + vx;
  y = y + vy;

  //bouncing

  if (x > width-d/2 || x < d/2 ) { 
    vx = vx * -1;
    vy = random(-5, 5) * speedInc;
  } 
  if (y < 100+d/2 || y > height-d/2) {
    vy = vy * -1;
    vx = random(-5, 5) * speedInc;
  }

  if (star1On) {
    image(star1, x, y, 0.75*d, 0.75*d);
  }
  if (star2On) {
    image(star2, x, y, 0.75*d, 0.75*d);
  }
  if (dizzyOn) {
    image(dizzy, x, y, 0.6*d, 0.6*d);
  }
  if (sparklesOn) {
    image(sparkles, x, y, 0.75*d, 0.75*d);
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
