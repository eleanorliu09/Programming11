class Starfighter extends GameObject {

  float ay, ax;
  int cooldown, threshold, countPotion, countLightning;
  boolean isQuick;
  float speed;

  Starfighter() {
    super(width/2, height - 80, 0, 0, 60, #FF0000, 1);
    threshold = 10;
    cooldown = threshold;
    ay = 0;
    countPotion = 0;
    countLightning = 0;
    isQuick = false;
    speed = 3;
  }

  void show() {
    image(starfighterImgs.get(currStarfighter), x, y, starfighterNums.get(currStarfighter) * size, size);

    if (isProtected) {
      fill(canary, 100);
      ellipse(player1.x, player1.y, starfighterNums.get(currStarfighter) * 60, 60);
    }
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;

    if (mode != GAMEOVER && cooldown >= threshold && spaceKey) {
      if (!isPowerUp) {
        obj.add(new Bullet());
        cooldown = 0;
      } else if (isPowerUp) {
        powerUpGun();
        isPowerUp =  false;
      }
    }

    // controlling the starfighter
    if (mode != GAMEOVER) {
      if (upKey) vy = -speed;
      else if (downKey) vy = speed;
      else if (leftKey) vx = -speed;
      else if (rightKey) vx = speed;
      else if (!upKey && !downKey) vy *= 0.9;
      else if (!leftKey && !rightKey) vx *= 0.9;
    } else if (mode == GAMEOVER) {
      vy += ay;
      vy *= 0.96;
      ay = 0.5;
    }

    if (sKey) {
      x = width/2;
      y = height - 80;
    }

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof EnemyBullet || o instanceof MoverEnemyBullet) {
        if (collidingWith(o)) {
          lives --;
          obj.add(new Text(x, y, "Lives--"));
          explode();
          o.lives = 0;
          countPotion --;
          countLightning --;

          if (countPotion <= 0) isProtected = false;
        }
      }
      if (o instanceof Potion && !isProtected && collidingWith(o)) {
        countPotion = 3;
        isProtected = true;
        score += 3;
      }
      if (o instanceof Lightning && collidingWith(o) && !isQuick) {
        countLightning = 1;
        isQuick = true;
        score += 3;
      }
    }

    if (countLightning > 0 && isQuick == true) {
      speed = 5;
    } else if (countLightning <= 0 && isQuick == true) {
      speed = 3;
      isQuick = false;
    }
  }

  void explode() {
    obj.add(new Explosion());
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

  void protectHalo() {
    fill(canary, 100);
    ellipse(player1.x, player1.y, starfighterNums.get(currStarfighter) * 60, 60);
  }

  void powerUpGun() {
    obj.add(new Bullet(5, 0));
    obj.add(new Bullet(4, 3));
    obj.add(new Bullet(3, 4));
    obj.add(new Bullet(0, 5));
    obj.add(new Bullet(-3, 4));
    obj.add(new Bullet(-4, 3));
    obj.add(new Bullet(-5, 0));
    obj.add(new Bullet(-4, -3));
    obj.add(new Bullet(-3, -5));
    obj.add(new Bullet( 0, -5));
    obj.add(new Bullet( 3, -4));
    obj.add(new Bullet( 4, -3));

    obj.add(new Bullet(2.5, 0));
    obj.add(new Bullet(2, 1.5));
    obj.add(new Bullet(1.5, 2));
    obj.add(new Bullet(0, 2.5));
    obj.add(new Bullet(-1.5, 2));
    obj.add(new Bullet(-2, 1.5));
    obj.add(new Bullet(-2.5, 0));
    obj.add(new Bullet(-2, -1.5));
    obj.add(new Bullet(-1.5, -2));
    obj.add(new Bullet( 0, -2.5));
    obj.add(new Bullet( 1.5, -2));
    obj.add(new Bullet( 2, -1.5));
  }
}
