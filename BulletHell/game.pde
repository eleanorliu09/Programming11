void game() {
  background(0);

  // stars
  for (int i = 0; i < stars.size(); i++) {
    Star s = stars.get(i);
    s.show();
    s.act();

    if (s.x > height) {
      stars.remove(i);
      i -- ;
    }
  }
}

void gameClicks() {
}
