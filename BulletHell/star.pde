class Star extends GameObject { //name of class is always capitalized

  // instance variables
  // do not need to specify variables in gameobject class 

  Star() { // constructors
    size = random(1, 5);
    x = random(0, 800);
    y = 0;
    vx = 0;
    vy = size;
    lives = 1;
    c = #FFFFFF;
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
    fill(c);
    square(x, y, size);
  }
}
