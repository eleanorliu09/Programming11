void intro() {
  background(introblue);

  textSize(60);
  fill(255);
  colorText("Star Fighters", 150, 100);
  hue += 2;
  if (hue > 256) hue = 0;
  
  fill(grey);
  noStroke();
  square(770, 570, 40);
  image(options, 770, 570, 30, 30);
  tactileGame(770, 570, 30, 30);
}

void introClicks() {
  if (mouseX > 700 && mouseY > 550 && mouseY < 590 && mouseX < 740) {
    mode = OPTIONS;
    spaceKey = false;
  } else {
    mode = GAME;
  }
}

void colorText(String msg, int x, int y) {
  int temph = hue;
  for (int i = 0; i < msg.length(); i++) {
    String letter = msg.substring(i, i+1);
    fill( (temph % 256), 200, 200);
    text(letter, x, y);
    temph += 5;
    x += 38;
  }
}
