class Heartcluster extends GameObject {

  int timer;
  int addLives;

  Heartcluster() {
    super(random(width), random(300, height), random(-0.2, 0.2), random(-0.1, 0.1), 1);
    timer = 300;
  }

  void act() {
    super.act();

    if (dist(player1.x, player1.y, x, y) <= 40) { 
      lives = 0;
      score += 3;
      score += 8;
      addLives = (int) random(3, 6);
      player1.lives += addLives;
      obj.add(new Text(x, y, "+ " + addLives + " Lives"));
    }
    if (timer <= 0) lives = 0;

    timer--;
  }

  void show() {
    image(heartcluster, x, y, 150, 90);
  }
}
