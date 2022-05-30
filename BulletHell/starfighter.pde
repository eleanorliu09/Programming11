class Starfighter extends GameObject {

  float x, y, vx, vy;
  int lives;

  Starfighter() {
    x = width/2;
    y = 580;
    vx = vy = 0;
    lives = 3;
    size = 36;
  }

  void show() {
    image(starfighterImg, x, y, 1.8 * size, size);
  }

  void act() {
    if (upKey) y -= 5;
    else if (downKey) y += 5;
    else if (leftKey) x -= 5;
    else if (rightKey) x += 5;
  }
}
