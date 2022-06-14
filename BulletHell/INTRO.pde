void intro() {
  background(introblue);

  textSize(60);
  colorText("StarFighters", 200, 50);
  hue += 2;
  if (hue > 256) hue = 0;
  
  fill(verylightpurple);
  textSize(40);
  text("Rules:", 80, 105);
  
  fill(255);
  textSize(30);
  textAlign(LEFT, CENTER);
  text("- You have 3 lives", 50, 160);
  text("- Press space key to shoot bullets", 50, 200);
  text("- Press up, down, left or right arrow", 50, 240);
  text("buttons to move StarFighter", 50, 280);
  text("- Lives of each enemy are displayed", 50, 320);
  text("- Dodge the bullets!! They can cost", 50, 360);
  text("you a life :(", 50, 400);
  text("- Shoot your enemies to gain their lives", 50, 440);
  text("- Collect PowerUps from fallen enemies", 50, 480);
  textAlign(CENTER, CENTER);
  
  fill(grey);
  noStroke();
  square(770, 570, 40);
  image(options, 770, 570, 30, 30);
  tactileGame(770, 570, 30, 30);
}

void introClicks() {
if (mouseX > 750 && mouseY > 550 && mouseY < 590 && mouseX < 790 ) {
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
    fill( (temph % 256), 256, 256);
    text(letter, x, y);
    temph += 5;
    x += 38;
  }
}
