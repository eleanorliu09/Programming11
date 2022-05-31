class Starfighter extends GameObject {

  float x, y, vx, vy;
  int lives;
  float ay, ax;

  Starfighter() {
    x = width/2;
    y = 580;
    vx = vy = 0;
    lives = 3;
    size = 36;
    ay = 0.1;
    ax = 0.1;
  }

  void show() {
    image(starfighterImg, x, y, 1.8 * size, size);
  }

  void act() {

    if (upKey) vy = -3;
    else if (downKey) vy = 3;
    else if (leftKey) vx = -3;
    else if (rightKey) vx = 3;
    else if (!upKey && !downKey) vy *= 0.96;
    else if (!leftKey && !rightKey) vx *= 0.96;

    if (mode != GAMEOVER && spaceKey) obj.add(new Bullet());
  }

  void bounce() {
    vy += ay;
    vx += ax;

    y += vy;
    x += vx;

    if (y >= 500 || y < 0) {
      ay *= -1;
      vy *= -1;
      vx = random(-1, 1);
    }

    if (x >= 800 || x < 0) {
      ax *= -1;
      vx *= -1;
      vy = random(-1, 1);
    }

    if (mode == GAMEOVER && spaceKey) {
      vy = -3;
    }
    
    if (ax > 0)  ax -= 0.001;
    if (ax < 0)  ax += 0.001;
    if (ay > 0)  ay -= 0.001;
    if (ay < 0)  ay += 0.001;

    println( player1.vx + " " + player1.vy + " " + player1.ax + " " + player1.ay);
  }
}
