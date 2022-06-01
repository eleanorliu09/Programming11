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
    ay = 0;
    ax = 0;
  }

  void show() {
    image(starfighterImg, x, y, 1.8 * size, size);
  }

  void act() {
    y += vy;
    x += vx;

    if (mode != GAMEOVER) {
      if (upKey) vy = -3;
      else if (downKey) vy = 3;
      else if (leftKey) vx = -3;
      else if (rightKey) vx = 3;
      else if (!upKey && !downKey) vy *= 0.9;
      else if (!leftKey && !rightKey) vx *= 0.9;

      if (spaceKey) obj.add(new Bullet());
    } else if (mode == GAMEOVER) {
      vy += ay;
      vx += ax;
      ay = 1;
    }
  }

  void bounce() {

    if (mode != GAMEOVER) {
      if (y < 0 || y > height) vy *= -1;
      if (x < 0 || x > width) vx *= -1;
    }

    if ( mode == GAMEOVER) {
      if (y >= 500) {
        ay *= -1;
        vy *= -1;
        vx = random(-1, 1);
      }

      if (spaceKey) {
        for (int i = 0; i < 180; i++) {
          y -= 0.1;
        }
      }
    }


    //println( player1.vx + " " + player1.vy + " " + player1.ax + " " + player1.ay);
  }
}
