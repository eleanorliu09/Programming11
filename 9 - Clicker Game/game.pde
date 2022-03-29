void game() {
  background(skyblue);
  
  stroke(cornblue);
  fill(cornblue);
  rect(0, 0, width, 200);
  
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
    vy = random(-5, 5);
  } 
  if (y < 50 || y > height-50) {
      vy = vy * -1;
      vx = random(-5, 5);
  }
}

void gameClicks() {
  mode = GAMEOVER;
}
