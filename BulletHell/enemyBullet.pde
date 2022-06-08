class EnemyBullet extends GameObject {

  EnemyBullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, pink, 1);
  }

  EnemyBullet(float x, float y, float vx, float vy, color myC) {
    super(x, y, vx, vy, 10, myC, 1);
  }

  void act() {
    super.act();
  }

  void show() {
    fill(c);
    circle(x, y, size);
  }
}
