class Potion extends GameObject {

  Potion() {
    super(random(width), random(height), random(-0.2, 0.2), random(-0.1, 0.1), 1);
  }

  void act() {
    super.act();

    if (dist(player1.x, player1.y, x, y) <= 40) { 
      lives = 0;
    }
  }

  void show() {
    image(potion, x, y, 20, 20);
  }
}
