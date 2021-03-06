PImage heart, growingStar, blossom, tulip, mapleleaf, sunflower, hibiscus, herb, fourleafclover, bouquet;
PImage currentStamp;
PImage colorPallettel;
boolean on;

//STAMP
int currStampIndex;
ArrayList<PImage> stampArrayList = new ArrayList<PImage>();

//THEME COLOURS
color darkblue = #007EA7;
color prussianBlue = #22007C;
color cyan = #68C3D4;
color lightcyan = #d4ebf2;

//CURRENT VARIABLES
color currColor;
color palletteColor;
int currCircleX;
int currThickness;
int currH;
int colorPallette;

//PEN COLOURS
color pink = #E56B6F;
color red = #FF3333;
color orange = #F58A07;
color yellow = #EEC643;
color yellow2 = #F4E409;
color green = #0CCE6B;
color blue = #00B4D8;
color indigo = #134074;
color violet = #893168;
color purple = #9E768F;
color white = #FFFFFF;

void setup() {
  colorPallette = 0;
  currStampIndex = 0;
  background(255);
  size(800, 600);
  currColor = white;
  currCircleX= 150;
  currThickness = 4;
  currH = 20;
 colorPallettel = loadImage("colorPallette.png");
 
  // LOAD STAMPS
  heart = loadImage("heart.png");
  growingStar = loadImage("growingStar.png");
  tulip = loadImage("tulip.png");
  blossom = loadImage("blossom.png");
  mapleleaf = loadImage("mapleleaf.png");
  sunflower = loadImage("sunflower.png");
  hibiscus = loadImage("hibiscus.png");
  fourleafclover = loadImage("fourleafclover.png");
  bouquet = loadImage("bouquet.png");
  herb = loadImage("herb.png");
  
  stampArrayList.add(heart);
  stampArrayList.add(growingStar);
  stampArrayList.add(tulip);
  stampArrayList.add(blossom);
  stampArrayList.add(mapleleaf);
  stampArrayList.add(sunflower);
  stampArrayList.add(hibiscus);
  stampArrayList.add(fourleafclover);
  stampArrayList.add(bouquet);
  stampArrayList.add(herb);
  
  currentStamp = stampArrayList.get(0);
  
}

void draw() {
  fill(255);
  stroke(0);

  fill(darkblue);
  stroke(darkblue);
  strokeWeight(5);

  // SIDE BARS
  rect(0, 0, 100, 800);
  rect(0, 0, 800, 40);

  // SLIDE BAR TO CONTROL PEN THICKNESS
  fill(cyan);
  stroke(cyan);
  strokeWeight(5);
  rect(105, 10, 200, 20);
  stroke(prussianBlue);

  // SLIDER CIRCLE
  line(110, 20, 300, 20);
  stroke(prussianBlue);
  fill(cyan);
  circle(currCircleX, 20, currThickness);

  tactileSlider();

  // PICKING PALLETES
  fill(cyan);
  stroke(cyan);
  strokeWeight(5);
  circle(340, 22, 25);
  circle(380, 22, 25);
  circle(420, 22, 25);
  fill(0);
  textAlign(CENTER, CENTER);
  text("1", 340, 20);
  text("2", 381, 20);
  text("3", 420, 20);
  tactile4(340, 22, 25);
  tactile4(380, 22, 25);
  tactile4(420, 22, 25);

  // ACTIVATING HEART STAMP
  fill(white);
  stroke(darkblue);
  strokeWeight(5);
  stampOnOff();
  rect(10, 10, 80, 80);
  tactile();
  image(currentStamp, 10, 10, 80, 80);

  if (!on) {
    cCl();
  }

  if (colorPallette == 0) {

    // CHANGE COLOUR OF PEN
    tactile2();
    fill(pink);
    strokeWeight(0);
    rect(10, 100, 80, 25);

    fill(red);
    rect(10, 135, 80, 25);

    fill(orange);
    rect(10, 170, 80, 25);

    fill(yellow);
    rect(10, 205, 80, 25);

    fill(yellow2);
    rect(10, 240, 80, 25);

    fill(green);
    rect(10, 275, 80, 25);

    fill(blue);
    rect(10, 310, 80, 25);

    fill(indigo);
    rect(10, 345, 80, 25);

    fill(violet);
    rect(10, 380, 80, 25);

    fill(purple);
    rect(10, 415, 80, 25);

    fill(white);
    rect(10, 450, 80, 25);
  } else if (colorPallette == 1) {
    image(colorPallettel, 10, 100, 80, 375);
    colorPallettek();
  }

  // NEW, LOAD, SAVE BUTTONS

  //NEW
  fill(cyan);
  strokeWeight(0);
  rect(10, 485, 80, 30);
  tactile3(10, 485, 80, 30);

  //LOAD
  fill(cyan);
  strokeWeight(0);
  rect(10, 525, 80, 30);
  tactile3(10, 525, 80, 30);

  //SAVE
  fill(cyan);
  strokeWeight(0);
  rect(10, 565, 80, 30);
  tactile3(10, 565, 80, 30);

  textAlign(CENTER, CENTER);
  fill(0);
  text("NEW", 50, 500);
  text("LOAD", 50, 540);
  text("SAVE", 50, 580);
}

void cCl() {
  if (!on) {
    strokeWeight(0);
    stroke(currColor);
    fill(currColor);
    rect(12, 12, 78, 78);
  }
}

void colorPallettek() {

  if (mouseX > 10 && mouseX < 90 && mouseY > 100 && mouseY < 475 && !on) {
    palletteColor = get(mouseX, mouseY);
    strokeWeight(0);
    stroke(palletteColor);
    fill(palletteColor);
    rect(12, 12, 78, 78);
  }
}

void tactileSlider() {
  if (mouseX > 105 && mouseY > 10 && mouseX < 305 && mouseY < 30) {
    fill(lightcyan, 50);
    strokeWeight(0);
    rect(100, 5, 210, 35);
  }
}

void tactile4(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) <= r) {
    fill(cyan, 100);
    stroke(cyan);
    circle(x, y, r+3);
  }
}
void tactile3(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h  ) {
    stroke(cyan);
    fill(cyan, 100);
    strokeWeight(5);
    rect(x, y, w, h);
  }
}

void tactile2() {
  if (mouseX > 10 && mouseX < 90 && colorPallette == 0) {
    strokeWeight(5);
    if (mouseY > 100 && mouseY < 125) {
      stroke(pink);
      rect(10, 100, 80, 25);
    } else if (mouseY > 135 && mouseY < 160) {
      stroke(red);
      rect(10, 135, 80, 25);
    } else if (mouseY > 170 && mouseY < 195) {
      stroke(orange);
      rect(10, 170, 80, 25);
    } else if (mouseY > 205 && mouseY < 230) {
      stroke(yellow);
      rect(10, 205, 80, 25);
    } else if (mouseY > 240 && mouseY < 265) {
      stroke(yellow2);
      rect(10, 240, 80, 25);
    } else if (mouseY > 275 && mouseY < 300) {
      stroke(green);
      rect(10, 275, 80, 25);
    } else if (mouseY > 310 && mouseY < 335) {
      stroke(blue);
      rect(10, 310, 80, 25);
    } else if (mouseY > 345 && mouseY < 360) {
      stroke(indigo);
      rect(10, 345, 80, 25);
    } else if (mouseY > 380 && mouseY < 405) {
      stroke(violet);
      rect(10, 380, 80, 25);
    } else if (mouseY > 415 && mouseY < 440) {
      stroke(purple);
      rect(10, 415, 80, 25);
    } else if (mouseY > 450 && mouseY < 475) {
      stroke(white);
      rect(10, 450, 80, 25);
    }
  }
}

void tactile() {

  if ( dist(mouseX, mouseY, 420, 22) <= 25) {
    fill(yellow, 100); 
    rect(10, 10, 80, 80);
  }
}

void mouseDragged() {
  if (mouseX > 100 && mouseY > 40) {
    if (!on) {
      //squiggly line
      strokeWeight(currThickness);
      stroke(currColor);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      image(currentStamp, mouseX, mouseY, currH, currH);
    }
  }
  if (mouseX > 110 && mouseY > 5 && mouseX < 300 && mouseY < 35) {
    getT();
  }
}

void mouseReleased() {

  if (mouseX > 10 && mouseY > 10 && mouseX < 90 && mouseY < 90) {
    currStampIndex++;
    if (currStampIndex >= stampArrayList.size()) {
      currStampIndex = 0;
    }
    currentStamp = stampArrayList.get(currStampIndex);
  }

  //PALLETTES
  if (dist(340, 22, mouseX, mouseY) <= 25) {
    colorPallette = 0;
  } else if (dist(380, 22, mouseX, mouseY) <= 25) {
    colorPallette = 1;
  }

  if (mouseX > 10 && mouseX < 90 && mouseY > 100 && mouseY < 475) {
    currColor = palletteColor;
  }
  //NEW
  if (mouseX > 10 && mouseX < 90 && mouseY > 485 && mouseY <515) {
    background(currColor);
  }

  //LOAD
  if (mouseX > 10 && mouseX < 90 && mouseY > 525 && mouseY < 555) {
    selectInput("Pick an image to load", "openImage");
  }
  if (mouseX > 10 && mouseX < 90 && mouseY > 565 && mouseY < 595) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }

  if (mouseX > 110 && mouseY > 5 && mouseX < 300 && mouseY < 35) {
    getT();
  }

  if ( dist(mouseX, mouseY, 420, 22) <= 25) {
    on = !on;
  }

  if (on && mouseX > 100 && mouseY > 40) {
    image(currentStamp, mouseX, mouseY, currH, currH);
  }

  if (mouseX > 10 && mouseX < 90 && colorPallette == 0) {
    if ( mouseY > 100 && mouseY < 125) {
      currColor = pink;
    } else if (mouseY > 135 && mouseY < 160) {
      currColor = red;
    } else if (mouseY > 170 && mouseY < 195) {
      currColor = orange;
    } else if (mouseY > 205 && mouseY < 230) {
      currColor = yellow;
    } else if (mouseY > 240 && mouseY < 265) {
      currColor = yellow2;
    } else if (mouseY > 275 && mouseY < 300) {
      currColor = green;
    } else if (mouseY > 310 && mouseY < 335) {
      currColor = blue;
    } else if (mouseY > 345 && mouseY < 370) {
      currColor = indigo;
    } else if (mouseY > 380 && mouseY < 405) {
      currColor = violet;
    } else if (mouseY > 415 && mouseY < 440) {
      currColor = purple;
    } else if (mouseY > 450 && mouseY < 475) {
      currColor = white;
    }
  }
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get (105, 45, width-100, height-40);
    canvas.save(f.getAbsolutePath());
  }
}

void getT() {
  currCircleX= mouseX;
  currThickness = (int) map(currCircleX, 110, 300, 0, 40);
  currH = (int) map(currCircleX, 110, 300, 0, 80);
}

void stampOnOff() {
  if (on) {
    strokeWeight(5);
    stroke(yellow);
  } else {
    strokeWeight(5);
    stroke(prussianBlue);
  }
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n ++ ;
    }
  }
}
