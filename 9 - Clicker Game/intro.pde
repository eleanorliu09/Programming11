void intro() {
  background(skyblue);

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
  rect(400, 400, 200, 100);
  fill(orange);
  textSize(50);
  text("START!", 400, 390);

  tactileStartButton();
}


void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
}

void tactileStartButton() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {

    stroke(orange);
    strokeWeight(6);
    fill(yellow);
    rect(400, 400, 200, 100);
    fill(orange);
    textSize(50);
    text("START!", 400, 390);
  }
}
