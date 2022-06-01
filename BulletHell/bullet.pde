class Bullet extends GameObject {

  Bullet() {
    x = player1.x;
    y = player1.y;
    vx = 0;
    vy = -10;
    size = 5;
    c = #FF0000;
    lives = 1;
    // super(player1.x, player1.y, 0, -10, 5, red, 1);
  }

  void act() {
    super.act();
  }
  void show() {
    fill(c);
    circle(x, y, size);
  }
}
