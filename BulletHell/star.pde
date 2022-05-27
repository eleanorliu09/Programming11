public class Star { //name of class is always capitalized

  // instance variables
  float x, y, vx, vy;
  float size;
  color c;
  int lives;

  Star() { // constructors
    size = random(1, 5);
    x = random(0, 800);
    y = 0;
    vx = 0;
    vy = size;
    lives = 1;
  }

  //behavioral function
  void act() {
    y += vy;
    x += vx;

    if (y > height) {
      lives = 0;
    }
  }

  void show() {
    square(x, y, size);
  }
}
