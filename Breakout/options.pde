void options() {
  background(optionsColor);

  fill(lavender);
  textSize(80);
  text("Themes", width/2, 40);

  textSize(50);
  image(flowers, 150, 150, 180, 110);
  image(forest, 150, 300, 180, 110);
  image(sunset, 150, 450, 180, 110);

  text("Flower Power", 400, 150);
  text("Hidden Forest", 400, 300);
  text("Twilight Dream", 400, 450);

  tactileOptions(150, 150, 180, 110);
  tactileOptions(150, 300, 180, 110);
  tactileOptions(150, 450, 180, 110);
}

void optionsClicks() {

  if (mouseY > 85 && mouseY < 215 && mouseX > 60 && mouseX < 240) {
    mode = INTRO;
    brickColor[0] = #c73857;
    brickColor[1] = #c7387f;
    brickColor[2] = #db0dc3;
    brickColor[3] = #ab0ddb;
    gameBackground = #fcdef1;
    introColor = #fad1ff;
    paddleColor =#ffea8c;
    ballColor = #ff914d;
    optionsColor = #f5d7f1;
    gameName = "Flower Power";
    nameX = 140;
    textSize(80);
    println("2");
  }
  if (mouseY > 235 && mouseY < 365 && mouseX > 60 && mouseX < 240) {
    mode = INTRO;
    brickColor[0] = #0C4610;
    brickColor[1] = #126918;
    brickColor[2] = #188C1F;
    brickColor[3] = #1EAE27;

    gameBackground = #C6DEA6;
    introColor = #9DFBB4;
    brickgreen = #116917;
    paddleColor = #F9DC5C;
    ballColor = #ECC209;
    optionsColor = #def5ab;

    gameName = "Hidden Forest";
    nameX = 120;
    textSize(70);
    println("2");
  }
  if (mouseY > 385 && mouseY < 515 && mouseX > 60 && mouseX < 240) {
    mode = INTRO;
    brickColor[0] = #6200ff;
    brickColor[1] = #9000ff;
    brickColor[2] = #ae00ff;
    brickColor[3] = #d829ff;

    gameBackground = #d5e2f5;
    introColor = #d5ebf5;
    optionsColor = #ccf6fc;

    paddleColor = #9696fa;
    ballColor = #b99afc;

    gameName = "Twilight Dream";
    nameX = 100;
    textSize(55);
    println("2");
  }
}

void tactileOptions(int a, int b, int c, int d) {
  if (mouseX > a - (c/2) && mouseX < a + (c/2) && mouseY > b - (d/2) && mouseY < b + (d/2)) {
    fill(paddleColor, 100);
    rect(a, b, c+15, d+15);
  }
}
