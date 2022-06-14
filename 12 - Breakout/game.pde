void game() { //<>//
  background(gameBackground);

  // paddle
  fill(paddleColor);
  circle(px, py, pd);

  //move paddles
  if (akey == true && px > bd/2) px -= 3;
  if (dkey == true && px < height - bd/2) px += 3;

  //ball
  bx += vx;
  by += vy; 

  fill(ballColor);
  circle(bx, by, bd);

  //bounce
  if (dist(bx, by, px, py) < bd/2 + pd/2) {
    vx = (bx - px) / 10;
    vy = (by - py) / 10;
  }

  if (by < bd/2 || by > height - bd/2) {
    vy *= -1;
  }

  if (bx < bd/2 || bx > width - bd/2) {
    vx *= -1;
  }
  // bricks

  for (int i = 0; i < x.size(); i++) {

      manageBrick(i);
    
  }

  // bouncing bricks
  for (int i = 0; i < x.size(); i++) {
    if (dist(x.get(i), y.get(i), bx, by) < bd/2 + brickd/2) {
      vx = (bx - x.get(i)) / 8;
      vy = (by - y.get(i)) / 8;
      //alive[i] = false;
      x.remove(i);
      y.remove(i);
    }
  }

  fill(grey);
  noStroke();
  square(570, 570, 40);
  image(pause, 570, 570, 30, 30);
  tactileGame(570, 570, 30, 30);

  fill(grey);
  noStroke();
  square(520, 570, 40);
  image(options, 520, 570, 30, 30);
  tactileGame(520, 570, 30, 30);

  timecount++;
  textSize(30);
  fill( brickColor[2]);
  text( (timecount/60), 20, 580);

  if (y.size() == 0) {
    mode = GAMEOVER;
    finalscore = timecount;
  }
  println("bx: " + bx + " by: " + by + " vy: " + vy + " vx: " + vx);
  manageSpeed();

  if (spacekey) randomBrick();
}

void manageSpeed() {
  if ( vy >= 0 && vy < 2) {
    vy = 2 ;
    println("speed managed");
  } else if ( vy <= 0 && vy > -2) {
    vy = -2 ;
    println("speed managed");
  }
}
void manageBrick(int i) {
  if (y.get(i) == 25) fill(brickColor[4]);
  if (y.get(i) == 75) fill(brickColor[3]);
  if (y.get(i) == 125) fill(brickColor[2]);
  if (y.get(i) == 175) fill(brickColor[1]);
  if (y.get(i) == 225) fill(brickColor[0]);
  circle(x.get(i), y.get(i), brickd);
}

void tactileGame(int a, int b, int c, int d) {
  if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2)) {
    fill(paddleColor, 100);
    rect(a, b, c+15, d+15);
  }
}

void gameClicks() {
  if (mouseX > 500 && mouseY > 550 && mouseY < 590 && mouseX < 540) {
    mode = OPTIONS;
    prevMode = GAME;
    spacekey = false;
  }
  if (mouseX > 550 && mouseY > 550 && mouseY < 590 && mouseX < 590 ) {
    gamescreen = get(0, 0, width, height);
    mode = PAUSE;
    spacekey = false;
  }
}

void randomBrick() {
  int random = (int) random(0, x.size());
  x.remove(random);
  y.remove(random);
  spacekey = false;
}
