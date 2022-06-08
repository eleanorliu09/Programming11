class Potion extends GameObject {

  Potion() {
    super(random(width), random(height), random(-0.2, 0.2), random(-0.1, 0.1), 1);
  }

  void act() {
    super.act();
  }

  void show() {
    image(potion, x, y, 20, 20);
  }
}
