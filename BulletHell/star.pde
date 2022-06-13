class Star extends GameObject { //name of class is always capitalized

  // instance variables
  // do not need to specify variables in gameobject class 

  Star() { // constructors
    super(random(0, 800), 0, 0, 0, random(1, 5), #FFFFFF, 1);
    vy = size;
  }

  //behavioral function
  void act() {
    super.act();

    if (y > height) {
      lives = 0;
    }
  }

  void show() {
    fill(c);
    square(x, y, size);
  }
}
