void intro() {
  theme.play();
  background(bluegrey);

  fill(introyellow);
  textSize(80);
  text("PONG!", width/2, 100);


  fill(darkblue2);
  rect(300, 150, 200, 100);
  rect(300, 275, 200, 100);
  textSize(50);
  fill(introskyblue);
  text("PLAY!", 400, 215);
  textSize(40);
  text("OPTIONS", 400, 335);

  fill(lightyellow);
  circle(ix, iy, id);

  ix += ivx;
  iy += ivy;
  introBounce();
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 200 && mouseY < 400) {
    mode = GAME;
  }
}

void introBounce() {
  if (iy >= (height - id/2)||iy <= ( id/2) ) {
    ivy *= -1;
    coin.play();
    coin.rewind();
  }

  if (ix >= (width - id/2) || ix <= ( id/2)) {
    ivx *= -1;
    coin.play();
    coin.rewind();
  }
}
