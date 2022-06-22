class Bullet extends GameObject {

  Bullet() {
    super(player1.x, player1.y, 0, -10, 5, yellow, 1);
  }

  Bullet(float vx, float vy) {
    super(player1.x, player1.y, vx, vy, 10, #fad91b, 1);
  }

  void act() {
    super.act();
  }
  void show() {
    fill(c);
    circle(x, y, size);
  }
}
