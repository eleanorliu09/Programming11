class Particle extends GameObject {
  Particle(float myX, float myY, float myVx, float myVy) {
    super(myX, myY, 0.4 * myVx, 0.4 * myVy, 1, exp[0], 1);
  }

  void act() {
    super.act();
    size += 0.2;
  }

  void show() {
    super.show();
    if (size > 1.5) c = exp[1];
    if (size > 2) c = exp[2];
    if (size > 3) c = exp[3];
    if (size > 4.5) c = exp[4];
    if (size > 6) lives = 0;
  }
}
