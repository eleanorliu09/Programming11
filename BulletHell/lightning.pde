class Lightning extends GameObject {
  Lightning() {
    super(random(width), random(height), random(-0.2, 0.2), random(-0.1, 0.1), 1);
  }
  void act() {
    super.act();

    if (dist(player1.x, player1.y, x, y) <= 40) { 
      lives = 0;
      float tempvx = player1.vx;
      float tempvy = player1.vy;

      for (int i = 0; i < 180; i++) {
        lightning();
      }

      player1.vx = tempvx;
      player1.vy = tempvy;
      isProtected = false;
    }
  }

  void show() {
    image(lightning, x, y, 20, 20);
  }

  void lightning() {
    isProtected = true;
    player1.vx = 5;
    player1.vy = 5;
    println("isProtected");
    fill(canary, 100);
    ellipse(player1.x, player1.y, starfighterNums.get(currStarfighter) * 60, 60);
  }
}
