void game() {
  background(dblue);
  //paddles
  fill(pink);
  circle(leftx-50, lefty, leftd);
  fill(green);
  circle(rightx+50, righty, rightd);

  //ball
  fill(yellow);
  circle(ballx, bally, balld);

  //move ball
  if (timer > 0) {
    ballx += vx;
    bally += vy;
  }

  //move paddles
  if (wkey == true) {
    lefty -= 5;
  }
  if (skey == true) lefty += 5;
  if (upkey == true) righty -= 5;
  if (downkey == true) righty += 5;

  bounce();

  // center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scoreboard
  textSize(50);
  fill(pink);
  text(leftScore, width/4, 50);
  fill(green);
  text(rightScore, 3 * width/4, 50);
  fill(orange);
  text(timer, width/2, 50);

  timer -= 0.06;
}

void gameClicks() {
}

void bounce() {

  if (dist(leftx, lefty, ballx, bally) <= (balld + leftd)/2 ) {
    vx = 0.1*(ballx - leftx);
    vy = 0.1*(bally - lefty);
  }
  if (dist(rightx, righty, ballx, bally) <= (balld + rightd)/2 ) {
    vx = 0.1*(ballx - rightx);
    vy = 0.1*(bally - righty);
  }
  if (bally >= (height - balld/2) ) {
    vy *= -1;
  }
  if (bally <= ( balld/2)) {
    vy *= -1;
  }

  if (ballx >= (width - balld/2)) {
    vx *= -1;
    leftScore++;
    rightScore--;
    rightScore = Math.max(0, rightScore);
    ballx = width/2;
    bally = height/2;
  }

  if (ballx <= ( balld/2)) {
    vx *= -1;
    rightScore++;
    leftScore--;
    leftScore = Math.max(0, leftScore);
    ballx = width/2;
    bally = height/2;
  }
}
