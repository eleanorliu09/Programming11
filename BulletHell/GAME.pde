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
}

void gameClicks() {
  mode = PAUSE;
  gamescreen = get(0, 0, width, height);
  player1.x = width/2;
  player1.y = height/2;
}
