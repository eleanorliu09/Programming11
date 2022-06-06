class CircleEnemy extends GameObject {

  int shootTimes;

  CircleEnemy() {
    super(random(width), 0, 0, 5, 40, pink, 1);
    shootTimes = 6;
  }

  void act() {
    super.act();

    if (shootTimes > 0 && frameCount % 10 == 0) {
      obj.add(new EnemyBullet(x, y, 10, 0, red));
      obj.add(new EnemyBullet(x, y, 6, 6, red));
      obj.add(new EnemyBullet(x, y, 6, 8, red));
      obj.add(new EnemyBullet(x, y, 0, 10, red));
      obj.add(new EnemyBullet(x, y, -6, 8, red));
      obj.add(new EnemyBullet(x, y, -8, 6, red));
      obj.add(new EnemyBullet(x, y, -10, 0, red));
      obj.add(new EnemyBullet(x, y, -8, -6, red));
      obj.add(new EnemyBullet(x, y, -6, -8, red));
      obj.add(new EnemyBullet(x, y, 0, -10, red));
      obj.add(new EnemyBullet(x, y, 6, -8, red));
      obj.add(new EnemyBullet(x, y, 8, -6, red ));

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
    fill(red);
    circle(x, y, size);
  }
}
