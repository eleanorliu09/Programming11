class Explosion extends GameObject {
  Explosion() {
    super(player1.x, player1.y, player1.vx, player1.vy, 1);
  }

  void show() {
    image(explodeGif[explodeIndex], x, y, 60, 60);
    if (frameCount % 5 == 0) explodeIndex++;
    if (explodeIndex == numberOfFrames) {
      explodeIndex = 0;
      lives = 0;
    }
  }

  void act() {
    x = player1.x;
    y = player1.y;
  }
}
