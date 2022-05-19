public class Mover { //name of class is always capitalized

  // instance variables
  float x, y;
  float vx, vy;
  float size;
  float c;

  Mover() { // constructors
    x = width/2;
    y = height/2;
    vx = random(-5, 5);
    vy = random(-5, 5);
    size = random(10, 25);
    c = random(0, 255);
  }

  //behavioral function
  void act() {
    x += vx;
    y += vy;
    if ( y > height-5 || y < 5) { 
      vy *= -1;
    }
    if ( x > width-5 || x < 5) {
      vx *= -1;
    }
  }

  void show() {
    stroke(0);
    strokeWeight(0.5);
    fill(c, 250, 250);
    circle(x, y, size);
    if (c > 255) c = 0;
    c += 3;
  }
}
