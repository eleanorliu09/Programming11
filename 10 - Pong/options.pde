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

  fill(optionsyel, 50);
  stroke(optionsyel, 50);
  circle(currPlanetOptionsX, currPlanetOptionsY, 100);
}

void optionsClicks() {
  //println(mouseX + " " + mouseY);
  if ( mouseX > 730 && mouseX < 770 && mouseY > 530 && mouseY < 570) {
    mode = GAME;
  }
  if (dist(mouseX, mouseY, 190, 160) <= 40) {
    currPlanet = planet1;
    currPlanetOptionsX = 190;
    currPlanetOptionsY = 160;
    isP3 = false;
  }
  if (dist(mouseX, mouseY, 290, 160) <= 40) {
    currPlanet = planet2;
    currPlanetOptionsX = 290;
    currPlanetOptionsY = 160;
    isP3 = false;
  }
  if (dist(mouseX, mouseY, 390, 160) <= 40) {
    currPlanet = planet3;
    currPlanetOptionsX = 412;
    currPlanetOptionsY = 160;
    isP3 = true;
  }
  if (dist(mouseX, mouseY, 540, 160) <= 40) {
    currPlanet = planet4;
    currPlanetOptionsX = 540;
    currPlanetOptionsY = 160;
    isP3 = false;
  }
  if (dist(mouseX, mouseY, 640, 160) <= 40) {
    currPlanet = planet5;
    currPlanetOptionsX = 640;
    currPlanetOptionsY = 160;
    isP3 = false;
  }
  if (dist(mouseX, mouseY, 240, 260) <= 40) {
    currPlanet = planet6;
    currPlanetOptionsX = 240;
    currPlanetOptionsY = 260;
    isP3 = false;
  }
  if (dist(mouseX, mouseY, 340, 260) <= 40) {
    currPlanet = planet7;
    currPlanetOptionsX = 340;
    currPlanetOptionsY = 260;
    isP3 = false;
  }
  if (dist(mouseX, mouseY, 440, 260) <= 40) {
    currPlanet = planet8;
    currPlanetOptionsX = 440;
    currPlanetOptionsY = 260;
    isP3 = false;
  }
  if (dist(mouseX, mouseY, 540, 260) <= 40) {
    currPlanet = planet9;
    currPlanetOptionsX = 540;
    currPlanetOptionsY = 260;
    isP3 = false;
  }
}
