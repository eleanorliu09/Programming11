class CircleEnemy extends GameObject {

  int shootTimes;
  float transparency;

  CircleEnemy() {
    super(random(width), 0, 0, 2.5, 40, pink, 1);
    shootTimes = 3;
    transparency = 0;
  }

  void act() {
    super.act();

    if (shootTimes > 0 && frameCount % 6 == 0) {
      obj.add(new EnemyBullet(x, y, 5, 0, brightpink));
      obj.add(new EnemyBullet(x, y, 4, 3, brightpink));
      obj.add(new EnemyBullet(x, y, 3, 4, brightpink));
      obj.add(new EnemyBullet(x, y, 0, 5, brightpink));
      obj.add(new EnemyBullet(x, y, -3, 4, brightpink));
      obj.add(new EnemyBullet(x, y, -4, 3, brightpink));
      obj.add(new EnemyBullet(x, y, -5, 0, brightpink));
      obj.add(new EnemyBullet(x, y, -4, -3, brightpink));
      obj.add(new EnemyBullet(x, y, -3, -5, brightpink));
      obj.add(new EnemyBullet(x, y, 0, -5, brightpink));
      obj.add(new EnemyBullet(x, y, 3, -4, brightpink));
      obj.add(new EnemyBullet(x, y, 4, -3, brightpink ));

      shootTimes --;
      transparency += 8;
    }

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof Bullet) {
        if (collidingWith(o)) {
          lives --;
          explode();
          o.lives = 0;
        }
      }
    }
  }

  void show() {
    fill(brightpink);
    circle(x, y, size);
    fill(#FFFFFF);
    textSize(20);
    text(lives, x, y);
  }

  void explode() {
    super.explode();
  }
}
