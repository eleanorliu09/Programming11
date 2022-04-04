void options() {
  background(honeydew);

  fill(teagreen);
  strokeWeight(0);
  rect(700, 700, 150, 50);
  fill(darkgreen);
  textSize(40);
  text("Play", 700, 695);

  image(colorPalette, 400, 90, 740, 150);
  fill(mint);
  stroke(0);
  rect(210, 260, 340, 50);
  rect(590, 260, 340, 50);
  fill(darkgreen);
  text("SPEED", 210, 217);
  text("SIZE", 590, 217);

  stroke(pgtea);
  strokeWeight(9);
  line(60, 260, 360, 260);
  line(440, 260, 740, 260);

  strokeWeight(0);
  fill(pgtea);
  circle(speedX, 260, 35);
  circle(sizeX, 260, 35);

  stroke(0);
  fill(currColor);
  circle(400, 400, d);


  optionsTactile();

  if (mouseX > 30 && mouseX < 770 && mouseY > 30 && mouseY < 180 ) {
    previewColor = get(mouseX, mouseY);
    fill(previewColor);
    stroke(0);
    strokeWeight(3);
    circle(mouseX, mouseY, 40);
  }

  image(star1, 175, 550, 50, 50);
  image(dizzy, 325, 550, 50, 50);
  image(star2, 475, 550, 50, 50);
  image(sparkles, 625, 550, 50, 50);

  if (star1On) {
    image(star1, 400, 400, 0.75*d, 0.75*d);
  }
  if (star2On) {
    image(star2, 400, 400, 0.75*d, 0.75*d);
  }
  if (sparklesOn) {
    image(sparkles, 400, 400, 0.75*d, 0.75*d);
  }
  if (dizzyOn) {
    image(dizzy, 400, 400, 0.6*d, 0.6*d);
  }
}

void optionsTactile() {
  if (mouseX > 625 && mouseX < 775 && mouseY > 675 && mouseY < 725) {
    stroke(green);
    strokeWeight(5);
    fill(limegreen, 50);
    rect(700, 700, 150, 50);
  }
}

void optionsClicks() {
  if (mouseX > 625 && mouseX < 775 && mouseY > 675 && mouseY < 725) {
    mode = GAME;
  }
  controlSlider();

  if (mouseX > 30 && mouseX < 770 && mouseY > 30 && mouseY < 180 ) {
    currColor = get(mouseX, mouseY);
  }

  if (mouseX > 150 && mouseX < 200 && mouseY > 525 && mouseY < 575) {
    star1On = !star1On;
    star2On = false;
    dizzyOn = false;
    sparklesOn = false;
  }
  if (mouseX > 300 && mouseX < 350 && mouseY > 525 && mouseY < 575) {
    dizzyOn = !dizzyOn;
    star2On = false;
    star1On = false;
    sparklesOn = false;
  }
  if (mouseX > 450 && mouseX < 500 && mouseY > 525 && mouseY < 575) {
    star2On = !star2On;
    dizzyOn = false;
    star1On = false;
    sparklesOn = false;
  }
  if (mouseX > 600 && mouseX < 650 && mouseY > 525 && mouseY < 575) {
    sparklesOn = !sparklesOn;
    star2On = false;
    dizzyOn = false;
    star1On = false;
  }
}

void optionsDrag() {
  controlSlider();
}

void controlSlider() {

  if (mouseX > 60 && mouseX < 360 && mouseY > 255 && mouseY < 265) {
    speedX = mouseX;
    speedInc = (int) map(speedX, 60, 360, 1, 4);
  }
  if (mouseX > 440 && mouseX < 740 && mouseY > 255 && mouseY < 265) {
    sizeX = mouseX;
    d = (int) map (sizeX, 440, 740, 30, 150);
  }
}
