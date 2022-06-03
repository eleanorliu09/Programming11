void game() {
  obj.add(0, new Star());
  obj.add(new Enemy());

  background(0);
  // stars
  for (int i = 0; i < obj.size(); i++) {
    GameObject o = obj.get(i);
    o.act();
    o.show();

    if (o.x > width ||o.x < 0 || o.y < 0 || o.y > height || o.lives <= 0) {
      obj.remove(i);
      i--;
    }
  }
  player1.act();
  player1.show();
  player1.bounce();

  fill(grey);
  noStroke();
  square(570, 570, 40);
  image(pause, 570, 570, 30, 30);
  tactileGame(570, 570, 30, 30);

  fill(grey);
  noStroke();
  square(520, 570, 40);
  image(options, 520, 570, 30, 30);
  tactileGame(520, 570, 30, 30);
}

void gameClicks() {
  if (mouseX > 500 && mouseY > 550 && mouseY < 590 && mouseX < 540) {
    mode = OPTIONS;
    spaceKey = false;
  }
  if (mouseX > 550 && mouseY > 550 && mouseY < 590 && mouseX < 590 ) {
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
