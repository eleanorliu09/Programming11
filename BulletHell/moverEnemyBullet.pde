class MoverEnemyBullet extends GameObject {

  float transparency;
  
  MoverEnemyBullet(float x, float y, float vx, float vy, color myC) {
    super(x, y, vx, vy, 10, myC, 1);
    transparency = 256;
  }
  

  void act() {
    super.act();
    transparency -= 0.4;
    
    if (transparency <= 128 ) lives = 0;
  }

  void show() {
    fill(c, transparency);
    circle(x, y, size);
  }
}
