void game() {
  stars.add(new Star());
  background(0);

  // stars
  for (int i = 0; i < stars.size(); i++) {
    Star s = stars.get(i);
    s.act();
    s.show();

    if (s.y > height) {
      stars.remove(i);
      i -- ;
    }
  }
  text(frameRate, 10, 10);
  text(stars.size(), 10, 30);
}

void gameClicks() {
}
