void pause() {
  background(lavender);

  fill(darklav);
  strokeWeight(0);
  rect(400, 300, 200, 80);
  rect(400, 500, 200, 80);
  fill(violet); 
  textSize(50);
  text("Resume", 400, 290);
  text("Options", 400, 490);

  pauseTactile(400, 300, 200, 80);
  pauseTactile(400, 500, 200, 80);
}

void pauseTactile(int a, int b, int c, int d) {
  if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2) ) {
    strokeWeight(5);
    stroke(violet);
    fill(darklav, 50);
    rect(a, b, c, d);
  }
}
void pauseClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 260 && mouseY < 340) {
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 460 && mouseY < 540) {
    mode = OPTIONS;
  }
}
