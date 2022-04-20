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

  fill(skyblue);
  for (int i = 0; i < x.length; i++) {
    for (int j = 0; j < y.length; j++) {
      circle(x[i], y[j], brickd);
      println(x[i] + " " + y[j]);
    }
  }

  // bouncing bricks
  for (int i = 0; i < x.length; i++) {
    if (dist(x[i], y[i], bx, by) < bd/2 + brickd/2) {
      vx = (bx - x[i]) / 10;
      vy = (by - y[i]) / 10;
    }
  }
}
