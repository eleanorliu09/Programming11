class DivEnemy extends GameObject {

  int splitTimes, divEnemyFrame, sp1, sp2;

  DivEnemy(float myX, float myY, int size, int lives, int mySplitTimes) {
    super(myX, myY, random(-0.8, 0.8), random(1.3, 2.5), size, pink2, lives);
    splitTimes = mySplitTimes;
    divEnemyFrame = 0;
    sp1 = sp2 = 0;
  }

  DivEnemy(float myX, float myY, int size, int lives, int mySplitTimes, boolean myIsAlive) {
    super(myX, myY, random(-0.8, 0.8), random(1.3, 2.5), size, pink2, lives);
    splitTimes = mySplitTimes;
    divEnemyFrame = 0;
    sp1 = sp2 = 0;
  }

  void act() {
    super.act();

    if (frameCount % 45 == 0) obj.add(new MoverEnemyBullet(x, y, 0, 3, pink2));
    //(float x, float y, float vx, float vy, color myC)
    divEnemyFrame++;

    if (splitTimes > 0 && divEnemyFrame == 60) {
      int temp = lives;

      if (temp % 2 == 0) {
        sp1 = temp/2;
        sp2 = temp/2;
      } else if (temp == 0) {
        sp1 = sp2 = 0;
      } else {
        sp1 = temp/2 + 1;
        sp2 = temp/2;
      }
      lives = 0;

      if (splitTimes == 3) {
        println(splitTimes);
        obj.add(new DivEnemy(x - 50 + random(-5, 5), y + random(-10, 10), 80, sp1, 2));
        obj.add(new DivEnemy(x + 50 + random(-5, 5), y + random(-10, 10), 80, sp2, 2));
        splitTimes --;
        divEnemyFrame = 0;
      } else if (splitTimes == 2) {
        println(splitTimes);
        obj.add(new DivEnemy(x - 36 + random(-5, 5), y + random(-10, 10), 60, sp1, 1));
        obj.add(new DivEnemy(x + 36 + random(-5, 5), y + random(-10, 10), 60, sp2, 1));
        splitTimes --;
        divEnemyFrame = 0;
      } else if (splitTimes == 1) {
        println(splitTimes);
        obj.add(new DivEnemy(x - 20 + random(-5, 5), y + random(-10, 10), 40, sp1, 0));
        obj.add(new DivEnemy(x + 20 + random(-5, 5), y + random(-10, 10), 40, sp2, 0));
        splitTimes --;
        divEnemyFrame = 0;
      }
    }

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof Bullet) {
        if (collidingWith(o)) {
          lives --;
          score += 5;
          float random = random(0, 8);
          if (random > 6) luckyObject();
          o.lives = 0;
        }
      }
    }
  }

  void show() {
    fill(pink2);
    circle(x, y, size);
    fill(#FFFFFF);
    textSize(20);
    text(lives, x, y);
  }

  void explode() {
    super.explode();
  }
}
