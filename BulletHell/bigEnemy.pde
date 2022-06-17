class BigEnemy extends GameObject {

  int shootTimes;

  BigEnemy(float myX, float myY, int size) {
    super(myX, myY, 0, 1.2, size, pink3, 5);
    shootTimes = 5;
  }

  void act() {
    super.act();

    if (shootTimes > 0 && frameCount % 32 == 0) {
      for (int i = 0; i < shootTimes; i++) {
        obj.add(new MoverEnemyBullet(x, y, random(-0.8, 0.8), random(1.3, 2.5), pink3));
      }
    }

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof Bullet) {
        if (collidingWith(o)) {
          lives --;
          shootTimes --;
          size -= 20;
          explode();
          o.lives = 0;
        }
      }
    }
  }

  void show() {
    fill(pink3);
    circle(x, y, size);
    fill(#FFFFFF);
    textSize(20);
    text(lives, x, y);
  }

  void explode() {
    super.explode();
  }
}
