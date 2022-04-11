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
  image(currPlanet, ballx - balld/2 , bally - balld/2, balld, balld);

  //move ball
  if (timer > 0 && counter < 0) {
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
  text( (timer/60), width/2, 50);

  counter--;

  if (counter < 0) {
    timer --;
  }

  if (timer < 0) {
    mode = GAMEOVER;
  }

  fill(grey);
  square(425, 525, 50);
  image(options, 430, 530, 40, 40);
  square(325, 525, 50);
  image(pause, 330, 530, 40, 40);

  bounce();
  counter();
}

void counter() {

  if (counter > 0) {
    fill(255, 255, 255, 100);
    rect(0, 0, width, height);
    fill(readygreen);
    textSize(30);
  }

  if (counter > 150  ) {
    fill(darkorange);
    textSize(80);
    text("3", width/2, height/2);
  }
  if (counter > 90 && counter <= 150) {
    fill(orange);
    textSize(80);
    text("2", width/2, height/2);
  }
  if (counter > 30 && counter <= 90) {
    fill(orangeyellow);
    textSize(80);
    text("1", width/2, height/2);
  }
  if (counter > 0 && counter <= 30) {
    fill(hotpink);
    textSize(100);
    text("GO!", width/2, height/2);
  }
}

void gameClicks() {

  if (mouseX > 425 && mouseY > 525 && mouseY < 575 && mouseX < 475) {
    mode = OPTIONS;
  }
  if (mouseX >325 && mouseY > 525 && mouseY < 575 && mouseX <375) {
    mode = PAUSE;
  }
}

void bounce() {

  if (dist(leftx, lefty, ballx, bally) <= (balld + leftd)/2 ) {
    vx = 0.1*(ballx - leftx);
    vy = 0.1*(bally - lefty);
    coin.play();
  }
  if (dist(rightx, righty, ballx, bally) <= (balld + rightd)/2 ) {
    vx = 0.1*(ballx - rightx);
    vy = 0.1*(bally - righty);
    coin.play();
  }
  if (bally >= (height - balld/2) ) {
    vy *= -1;
    coin.play();
  }
  if (bally <= ( balld/2)) {
    vy *= -1;
    coin.play();
  }

  if (ballx >= (width - balld/2)) {
    vx *= -1;
    leftScore++;
    rightScore--;
    rightScore = Math.max(0, rightScore);
    ballx = width/2;
    bally = height/2;
    counter = 210;
    coin.play();
  }

  if (ballx <= ( balld/2)) {
    vx *= -1;
    rightScore++;
    leftScore--;
    leftScore = Math.max(0, leftScore);
    ballx = width/2;
    bally = height/2;
    counter = 210;
    coin.play();
  }
}
