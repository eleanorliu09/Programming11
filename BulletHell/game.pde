void game() {
  obj.add(0, new Star());
  background(0);

  // stars
  for (int i = 0; i < obj.size(); i++) {
    GameObject o = obj.get(i);
    o.act();
    o.show();

    if (o.x > width ||o.x < 0 || o.y < 0 || o.y > height) {
      obj.remove(i);
      i--;
    }
  }
  player1.act();
  player1.show();
}

void gameClicks() {
  mode = 5;
  gamescreen = get(0, 0, width, height);
  player1.x = width/2;
  player1.y = height/2;
}
