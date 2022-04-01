void intro() {
  theme.play();
  
  background(darkblue);

  fill(orange);
  textSize(introTextFont);

  if (introTextFont == 80) {
    textTurnBig = false;
  } else if (introTextFont < 40) {
    textTurnBig = true;
  }

  if (textTurnBig) {
    introTextFont ++;
  } else {
    introTextFont --;
  }


  text("Clicker Game", 400, 150);

  fill(yellow);
  stroke(yellow);
  strokeWeight(0);
  rect(240, 400, 220, 100);
  rect(560, 400, 220, 100);

  fill(orange);
  textSize(50);
  text("START!", 240, 390);
  textSize(45);
  text("OPTIONS", 560, 390);

  tactileIntroButton(240, 400, 220, 100);
  tactileIntroButton(560, 400, 220, 100);
}


void introClicks() {
  if (mouseX > 130 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
  if (mouseX > 450 && mouseX < 670 && mouseY > 350 && mouseY < 450) {
    mode = OPTIONS;
  }
}

void tactileIntroButton(int a, int b, int c, int d) {
  if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2)) {

    stroke(orange);
    strokeWeight(6);
    fill(yellow, 50);
    rect(a, b, c, d);
  }
}
