class Lightning extends GameObject {

  int timer;

  Lightning() {
    super(random(width), random(300, height), random(-0.2, 0.2), random(-0.1, 0.1), 1);
    timer = 120;
  }
  void act() {
    super.act();

    if (dist(player1.x, player1.y, x, y) <= 40) { 
      lives = 0;
    }
    if (timer <= 0) lives = 0;

    timer--;
  }

  void show() {
    image(lightning, x, y, 20, 20);
  }

  void lightning() {
    player1.vx = 5;
    player1.vy = 5;
  }
}
