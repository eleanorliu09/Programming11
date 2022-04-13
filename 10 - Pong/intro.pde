void intro() {
  timer = 3600;
  
  theme.play();
  background(bluegrey);

  fill(introyellow);
  textSize(80);
  text("GALAXY PONG", width/2, 100);

  strokeWeight(0);
  fill(darkblue2);
  rect(300, 150, 200, 100);
  rect(300, 275, 200, 100);
  rect(300, 400, 200, 100);

  tactileIntro(300, 150, 200, 100);
  tactileIntro(300, 275, 200, 100);
  tactileIntro(300, 400, 200, 100);
  
  textSize(50);
  fill(introskyblue);
  text("PLAY!", 400, 215);
  textSize(40);
  text("OPTIONS", 400, 335);
  textSize(35);
  text("ONE PLAYER", 400, 460);

  fill(lightyellow);
  circle(ix, iy, id);
  image(planet7, ix - (id/2), iy- (id/2), id, id);
  ix += ivx;
  iy += ivy;
  introBounce();
}

void introClicks() {
  println(mouseX + " " + mouseY);
  if (mouseX > 300 && mouseX < 500 && mouseY > 150 && mouseY < 250) {
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 275 && mouseY < 375) {
    mode = OPTIONS;
  }

  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    playerMode = ONEPLAYER;
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

void tactileIntro(int a, int b, int c, int d) {
  if (mouseX > a && mouseX < a + c && mouseY > b && mouseY < b + d) {
    fill(yellow, 100);
    stroke(yellow, 100);
    strokeWeight(3);
    rect(a, b, c, d);
  }
}
