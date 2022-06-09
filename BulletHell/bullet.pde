class Bullet extends GameObject {

  Bullet() {
    super(player1.x, player1.y, 0, -10, 5, yellow, 1);
  }

  void act() {
    super.act();
  }
  void show() {
    fill(c);
    circle(x, y, size);
  }
}
