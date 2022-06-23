class Text extends GameObject {
  int cooldown;
  String message;
  float transparency;

  Text(float myx, float myy, String mymessage) {
    message = mymessage;
    x = myx;
    y = myy;
    vx = 0;
    vy = 0;
    lives = 1;
    c = verylightpurple;
    cooldown = 120;
    transparency = 0;
    size = 25;
  }

  Text(float myx, float myy, String mymessage, float mySize) {
    message = mymessage;
    x = myx;
    y = myy;
    vx = 0;
    vy = 0;
    lives = 1;
    c = verylightpurple;
    cooldown = 120;
    transparency = 0;
    size = mySize;
  }

  void act() {
    super.act();
    cooldown--;
    if (cooldown <= 0) lives = 0;
    transparency = map (cooldown, 0, 120, 0, 256);
  }

  void show() {
    fill(c, transparency);
    textSize(size);
    // println(message);
    text(message, x, y);
  }
}
