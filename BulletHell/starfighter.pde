class Starfighter extends GameObject {

  float ay, ax;
  int cooldown, threshold;

  Starfighter() {
    super(width/2, height - 80, 0, 0, 60, #FF0000, 50);
    threshold = 10;
    cooldown = threshold;
    ay = 0.3;
  }

  void show() {
    image(starfighterImgs.get(currStarfighter), x, y, starfighterNums.get(currStarfighter) * size, size);
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;
    if (mode != GAMEOVER && cooldown >= threshold && spaceKey) {
      obj.add(new Bullet());
      cooldown = 0;
    }

    // controlling the starfighter
    if (mode != GAMEOVER) {
      if (upKey) vy = -3;
      else if (downKey) vy = 3;
      else if (leftKey) vx = -3;
      else if (rightKey) vx = 3;
      else if (!upKey && !downKey) vy *= 0.9;
      else if (!leftKey && !rightKey) vx *= 0.9;
    } else if (mode == GAMEOVER) {
      vy += ay;
      vy *= 0.96;
      ay = 0.5;
    }

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof EnemyBullet) {
        if (collidingWith(o)) {
          lives --;
          o.lives = 0;
          println(lives);
        }
      }
    }
  }

  void bounce() {

    if (mode != GAMEOVER) {
      if (y < 0 || y > height) vy *= -1;
      if (x < 0 || x > width) vx *= -1;
    }

    if ( mode == GAMEOVER) {
      if (y >= 500) {
        vy *= -1;
        vx = random(-1, 1);
      }

      if (spaceKey) {
        for (int i = 0; i < 120; i++) {
          y -= 0.1;
        }
      }
    }


    //println( player1.vx + " " + player1.vy + " " + player1.ax + " " + player1.ay);
  }

  boolean collidingWith(GameObject o) {
    return (dist(o.x, o.y, x, y) < o.size/2 + size/2 );
  }
}
