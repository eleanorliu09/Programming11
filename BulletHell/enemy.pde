class Enemy extends GameObject {

  Enemy() {
    x = random(width);
    y = 0;
    vx = 0;
    vy = 5;
    size = 40;
    c = yellow;
    lives = 1;
  }

  void act() {
    super.act();

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
    fill(yellow);
    circle(x, y, size);
  }

}
