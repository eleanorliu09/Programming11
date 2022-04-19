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
}
