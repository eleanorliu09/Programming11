void game() {
  background(0);
  addObjects();
  gameEngine();

  fill(grey);
  noStroke();
  square(770, 570, 40);
  image(pause, 770, 570, 30, 30);
  tactileGame(770, 570, 30, 30);

  for (int i  = 0; i < player1.lives; i++) {
    image(redheart, 10 + i*30, 30, 20, 20);
  }

  if (isProtected) protectCount ++;
}

void addObjects() {
  obj.add(0, new Star());

  if (frameCount % 60 == 0) obj.add(new Enemy());
  if (frameCount % 180 == 0) obj.add(new MoverEnemy());
  if (frameCount % 300 == 0) obj.add(new CircleEnemy());
  if (frameCount % 900 == 0) {
    if (currEnemy % 2 == 0) { 
      obj.add(new DivEnemy(random(width), 0, 100, 8, 3));
    } else if (currEnemy % 1 == 0) {
      obj.add(new BigEnemy(random(width), 0, 120));
    }
    currEnemy++;
  }
}

void gameEngine() {
  if (player1.lives <= 0) {
    mode = GAMEOVER;
  }
  for (int i = 0; i < obj.size(); i++) {
    GameObject o = obj.get(i);
    o.act();
    o.show();

    if (o.x > width ||o.x < 0 || o.y < 0 || o.y > height || o.lives <= 0) {
      if ( o instanceof Starfighter == false) {
        if ( o.lives <= 0 && (o instanceof Enemy || o instanceof BigEnemy || o instanceof CircleEnemy || o instanceof MoverEnemy)) {
          luckyObject();
        } 
        obj.remove(i);
        i--;
      }
    }
  }
  player1.bounce();
}

void gameClicks() {
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

void luckyObject() {
  int luckyNum = (int) random(0, 3);
  if (luckyNum == 0) obj.add(new Heart());
  else if (luckyNum == 1) obj.add(new Potion());
  else if (luckyNum == 2) obj.add(new Lightning());
}
