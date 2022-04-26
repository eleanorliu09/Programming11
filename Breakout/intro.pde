void intro() {
  background(mint);
  textSize(80);
  colorText("FlowerPower", 170, 100);
  
  hue += 5;
  if (hue > 256) hue = 0;
}

void introClicks() {
  mode = GAME;
}

void colorText(String msg, int x, int y) {
  int temph = hue;
   for (int i = 0; i < msg.length(); i++) {
      String letter = msg.substring(i, i+1);
      fill( (temph % 256), 200, 200);
      text(letter, x, y);
      temph += 5;
      x += 30;
   }
}
