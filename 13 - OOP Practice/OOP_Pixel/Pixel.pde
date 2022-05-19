public class Pixel { //name of class is always capitalized

  // instance variables
  int x, y;
  float size;
  color c;

  Pixel() { // constructors
    x = (int) random(0, width);
    y = (int)random(0, height);
    c = get(x, y);
    size = min(200, 1000 / dist(mover.getX(), mover.getY(), x, y));
    size = max(20, size);
  }

  //behavioral function
  void act() {  
    size = min(200, 1000 / dist(mover.getX(), mover.getY(), x, y));
    size = max(20, size);
    square(x, y, size);
  }

  void show() {
    fill(c);
    size = min(200, 1000 / dist(mover.getX(), mover.getY(), x, y));
    size = max(20, size);
  }

  void setC(color myCx, color myCy) {
    c = get(myCx, myCy);
  }

  public int getX() {
    return x;
  }

  public int getY() {
    return y;
  }
}
