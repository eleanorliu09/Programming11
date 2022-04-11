void options() {
  background(optionsblue);
  fill(optionsyel);
  textSize(60);
  text("Options", width/2, 80);

  fill(grey);
  stroke(255);
  strokeWeight(5);
  square(725, 525, 50);
  image(play, 730, 530, 40, 40);
  
  image(planet1, 150, 120, 80, 80);
  image(planet2, 250, 120, 80, 80);
  image(planet3, 350, 120, 130, 80);
  image(planet4, 500, 120, 80, 80);
  image(planet5, 600, 120, 80, 80);
  
  image(planet6, 200, 220, 80, 80);
  image(planet7, 300, 220, 80, 80);
  image(planet8, 400, 220, 80, 80);
  image(planet9, 500, 220, 80, 80);
}

void optionsClicks() {
  if ( mouseX > 730 && mouseX < 770 && mouseY > 530 && mouseY < 570) {
    mode = GAME;
  }
  
}
