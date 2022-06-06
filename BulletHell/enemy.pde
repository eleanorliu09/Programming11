class Enemy extends GameObject {
  int cooldown, threshold;
  Enemy() {
    super(random(width), 0, 0, 5, 40, pink, 1);
  }

  void act() {
    super.act();

    // shoot
    if (frameCount % 30 == 0) obj.add(new EnemyBullet(x, y, 0, 10));

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
    fill(pink);
    circle(x, y, size);
  }
}
