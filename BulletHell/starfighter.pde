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
    super.act();

    if (upKey) vy = -3;
    else if (downKey) vy = 3;
    else if (leftKey) vx = -3;
    else if (rightKey) vx = 3;
    else if (!upKey && !downKey) vy *= 0.96;
    else if (!leftKey && !rightKey) vx *= 0.96;

    if (spaceKey) obj.add(new Bullet());
  }
}
