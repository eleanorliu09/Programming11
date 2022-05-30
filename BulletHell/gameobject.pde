class GameObject {

  float x, y, vx, vy, size;
  int lives;
  color c;

  GameObject() {
  }

  void act() {
    x += vx;
    y += vy;
  }

  void show() {
  }
}
