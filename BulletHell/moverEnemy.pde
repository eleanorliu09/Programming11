class MoverEnemy extends GameObject {
  int cooldown, threshold;
  MoverEnemy() {
    super(random(width), random(height/4), random(-1.5, 1.5), random(-0.8, 0.8), 40, hotpink, 3);
  }

  void act() {
    super.act();

    if ( y > height-5 || y < 5) { 
      vy *= -1;
      lives --;
    }
    if ( x > width-5 || x < 5) {
      vx *= -1;
      lives --;
    }


    // shoot
    if (frameCount % 45 == 0) obj.add(new MoverEnemyBullet(x, y, 0, 3, hotpink));

    //collisons
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);

      if (o instanceof Bullet) {
        if (collidingWith(o)) {
          lives --;
          score += 2;
          o.lives = 0;
          explode();
        }
      }
    }
  }

  void show() {
    fill(hotpink);
    circle(x, y, size);

    fill(#FFFFFF);
    textSize(20);
    text(lives, x, y);
  }

  void explode() {
    super.explode();
  }
}
