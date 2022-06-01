public class GameObject {

  float x, y, vx, vy, size;
  int lives;
  color c;

  GameObject() {
  }

  GameObject(float myX, float myY, float myVx, float myVy, color myC, int myLives) {
    x = myX; // this.x = the instance variable
    y = myY;
    vx = myVx;
    vy = myVy;
    c = myC;
    lives = myLives;
  }

  void act() {
    x += vx;
    y += vy;
  }

  void show() {
  }

  boolean collidingWith(GameObject o) {
    return (dist(o.x, o.y, x, y) < o.size/2 + size/2 );
  }
  
}
