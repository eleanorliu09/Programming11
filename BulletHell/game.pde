void game() {
  obj.add(0, new Star());
  background(0);

  // stars
  for (int i = 0; i < obj.size(); i++) {
    GameObject o = obj.get(i);
    o.act();
    o.show();

    if (o.y > height) {
      obj.remove(i);
      i -- ;
    }
  }

}

void gameClicks() {
}
