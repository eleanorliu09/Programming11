abstract class GameObject {

  float x, y, vx, vy, size;
  int lives;
  color c;

  GameObject() {
  }

  GameObject(float myX, float myY, float myVx, float myVy, float mySize, color myC, int myLives) {
    x = myX; // this.x = the instance variable
    y = myY;
    vx = myVx;
    vy = myVy;
    c = myC;
    lives = myLives;
    size = mySize;
  }

  GameObject(float myX, float myY, float myVx, float myVy, int myLives) {
    x = myX; // this.x = the instance variable
    y = myY;
    vx = myVx;
    vy = myVy;
    c = #FFFFFF;
    lives = myLives;
    size = 20;
  }

  void act() {
    x += vx;
    y += vy;
  }

  void show() {
    fill(c);
    circle(x, y, size);
  }

  boolean collidingWith(GameObject o) {
    return (dist(o.x, o.y, x, y) < o.size/2 + size/2 );
  }

  void explode() {
    obj.add(new Particle(x, y, 0, 5));
    obj.add(new Particle(x, y, 5, 0));
    obj.add(new Particle(x, y, 0, -5));
    obj.add(new Particle(x, y, -5, 0));
    obj.add(new Particle(x, y, 3, 4));
    obj.add(new Particle(x, y, 3, -4));
    obj.add(new Particle(x, y, -3, -4));
    obj.add(new Particle(x, y, -3, 4));

    obj.add(new Particle(x, y, 0, 2.5));
    obj.add(new Particle(x, y, 2.5, 0));
    obj.add(new Particle(x, y, 0, -2.5));
    obj.add(new Particle(x, y, -2.5, 0));
    obj.add(new Particle(x, y, 1.5, 2));
    obj.add(new Particle(x, y, 1.5, -2));
    obj.add(new Particle(x, y, -1.5, -2));
    obj.add(new Particle(x, y, -1.5, 2));
  }
}
