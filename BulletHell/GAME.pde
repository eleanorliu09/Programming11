void game() {
  background(0);
  addObjects();
  gameEngine();

  fill(grey);
  noStroke();
  square(770, 570, 40);
  image(pause, 770, 570, 30, 30);
  tactileGame(770, 570, 30, 30);

  fill(grey);
  noStroke();
  square(720, 570, 40);
  image(options, 720, 570, 30, 30);
  tactileGame(720, 570, 30, 30);
}

void addObjects() {
  obj.add(0, new Star());

  if (frameCount % 60 == 0) obj.add(new Enemy());
  if (frameCount % 180 == 0) obj.add(new CircleEnemy());
}

void gameEngine() {
  if (player1.lives >= 0) {
    mode = GAMEOVER;
  }
    for (int i = 0; i < obj.size(); i++) {
      GameObject o = obj.get(i);
      o.act();
      o.show();

      if (o.x > width ||o.x < 0 || o.y < 0 || o.y > height || o.lives <= 0) {
        if ( o instanceof Starfighter == false) {
          obj.remove(i);
          i--;
        }
      }
    }
    player1.bounce();
  }

  void gameClicks() {
    if (mouseX > 700 && mouseY > 550 && mouseY < 590 && mouseX < 740) {
      mode = OPTIONS;
      spaceKey = false;
    }
    if (mouseX > 750 && mouseY > 550 && mouseY < 590 && mouseX < 790 ) {
      gamescreen = get(0, 0, width, height);
      mode = PAUSE;
      spaceKey = false;
    }
  }

  void tactileGame(int a, int b, int c, int d) {
    if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2)) {
      fill(canary, 100);
      rect(a, b, c+15, d+15);
    }
  }
