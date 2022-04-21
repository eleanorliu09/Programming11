void game() {
  background(pgtea);

  // paddle
  fill(yellow);
  circle(px, py, pd);
  if (akey) px -= 5;
  if (dkey) px += 5;

  //ball
  bx += vx;
  by += vy; 

  fill(yellow2);
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

  for (int i = 0; i < n; i++) {
    manageBrick(i);
  }

  // bouncing bricks
  for (int i = 0; i < n; i++) {
    if (dist(x[i], y[i], bx, by) < bd/2 + brickd/2) {
      vx = (bx - x[i]) / 8;
      vy = (by - y[i]) / 8;
    }
  }
}

void manageBrick(int i) {

  if (y[i] == 25) fill(green[0]);
  if (y[i] == 75) fill(green[1]);
  if (y[i] == 125) fill(green[2]);
  if (y[i] == 175) fill(green[3]);
  circle(x[i], y[i], brickd);
}
