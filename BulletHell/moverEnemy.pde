class MoverEnemy extends GameObject {
  int cooldown, threshold;
  MoverEnemy() {
    super(random(width), random(height/4), random(-1.5, 1.5), random(-0.8, 0.8), 40, hotpink, 1);
  }

  void act() {
    super.act();

    if ( y > height-5 || y < 5) { 
      vy *= -1;
    }
    if ( x > width-5 || x < 5) {
      vx *= -1;
    }


    // shoot
    if (frameCount % 45 == 0) obj.add(new EnemyBullet(x, y, 0, 3, hotpink));

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof Bullet) {
        if (collidingWith(o)) {
          lives --;
          o.lives = 0;
          explode();
        }
      }
    }
  }

  void show() {
    fill(hotpink);
    circle(x, y, size);
  }

  void explode() {
    super.explode();
  }
}
