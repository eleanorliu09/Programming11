public class Ripple { //name of class is always capitalized

  // instance variables
  float x, y, r;
  float transparency;
  float dr, dt;

  Ripple() { // constructors
    x = mouseX;
    y = mouseY;
    r = random(80);
    transparency =  map(r, 0, 80, 255, 0);
    dr = random(0.1, 0.4);
  }

  //behavioral function
  void act() {
    r += dr;
    transparency = map(r, 0, 80, 255, 0);
  }

  void show() {
    strokeWeight(2);
    stroke(255, transparency);
    noFill();
    ellipse(x, y, 1.5*r, r);
  }

  float getTransparency() {
    return transparency;
  }

  void setX(float xpos) {
    x = xpos;
  }

  void setY(float ypos) {
    y = ypos;
  }
  void setR(float rSize) {
    r = rSize;
  }
}
