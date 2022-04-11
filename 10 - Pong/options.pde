void options() {
  background(optionsblue);
  fill(optionsyel);
  textSize(60);
  text("Options", width/2, 100);

  fill(grey);
  stroke(255);
  strokeWeight(5);
  square(725, 525, 50);
  image(play, 730, 530, 40, 40);
  image(planet1, 60, 60, 60, 60);
}

void optionsClicks() {
  if ( mouseX > 730 && mouseX < 770 && mouseY > 530 && mouseY < 570) {
    mode = GAME;
  }
}
