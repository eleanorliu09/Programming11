void options() {
  background(honeydew);

  fill(teagreen);
  strokeWeight(0);
  rect(700, 700, 150, 50);
  fill(darkgreen);
  textSize(40);
  text("Play", 700, 695);
  
  optionsTactile();
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
  if (mouseX > 625 && mouseX < 775 && mouseY > 675 && mouseY < 725){
    mode = GAME;
  }
}
