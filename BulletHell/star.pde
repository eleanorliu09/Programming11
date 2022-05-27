public class Star { //name of class is always capitalized

  // instance variables
  float x, y;
  float vy;
  float size;
  color c;

  Star() { // constructors
    x = random(0, width);
    y = 0;
    vy = 5;
    c = color( random(0, 255), 180, 170);
    size = random(15, 25);
  }

  //behavioral function
  void act() {
    y += vy;
  }

  void show() {
    stroke(0);
    fill(c);
    circle(x, y, size);
  }
}
