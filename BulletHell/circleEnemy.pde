class CircleEnemy extends GameObject {

  int shootTimes;

  CircleEnemy() {
    super(random(width), 0, 0, 2.5, 40, pink, 1);
    shootTimes = 3;
  }

  void act() {
    super.act();

    if (shootTimes > 0 && frameCount % 10 == 0) {
      obj.add(new EnemyBullet(x, y, 10, 0, brightpink));
      obj.add(new EnemyBullet(x, y, 6, 6, brightpink));
      obj.add(new EnemyBullet(x, y, 6, 8, brightpink));
      obj.add(new EnemyBullet(x, y, 0, 10, brightpink));
      obj.add(new EnemyBullet(x, y, -6, 8, brightpink));
      obj.add(new EnemyBullet(x, y, -8, 6, brightpink));
      obj.add(new EnemyBullet(x, y, -10, 0, brightpink));
      obj.add(new EnemyBullet(x, y, -8, -6, brightpink));
      obj.add(new EnemyBullet(x, y, -6, -8, brightpink));
      obj.add(new EnemyBullet(x, y, 0, -10, brightpink));
      obj.add(new EnemyBullet(x, y, 6, -8, brightpink));
      obj.add(new EnemyBullet(x, y, 8, -6, brightpink ));

      shootTimes --;
    }

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof Bullet) {
        if (collidingWith(o)) {
          lives --;
          o.lives = 0;
        }
      }
    }
  }

  void show() {
    fill(brightpink);
    circle(x, y, size);
  }
}
