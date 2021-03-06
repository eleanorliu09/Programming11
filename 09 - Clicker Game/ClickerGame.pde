import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme, gain, loss, gameover;

PImage colorPalette;
PFont myFont;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;  
final int OPTIONS = 4;

// target vars
float x, y, d;
float vx, vy; // target  velocity
float speedInc;

// colour palette
color lightpink = #FDC5F5;
color pink = #F7AEF8;
color hotpink = #EC4067;
color orange = #ffd663; // #EE8434;
color yellow = #fffed6; //#FFC914;
color green = #43B929;
color teagreen  = #dff7b0;
color honeydew = #E2F5E0;
color mint = #BDEFC9;
color pgtea = #28A445;
color mintgreen = #9CFC97;
color limegreen = #61D747;
color darkgreen = #588B55;
color blue = #37A2A9;
color blue2 = #0995ab;
color blue3 = #9bc5cc;
color blue4 = #16044d;
color darkblue = #290b73;
color lavender = #D2CFDD; 
color darklav = #A69EA9;
color violet = #653E65;

// intro screen animation
int introTextFont;
boolean textTurnBig;

// score
int lives;
int score;
int maxScore;

// options
int speedX;
int sizeX;

// options color
color currColor;
color previewColor; 

// types of images
PImage star1, dizzy, star2, sparkles;
boolean stampOn;
boolean star1On;
boolean star2On;
boolean dizzyOn;
boolean sparklesOn;

void setup() { //unexpected token void is almost missing brace
  size(800, 800);
  // width, height: special variables
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  // target initialization
  x = width / 2;
  y = height / 2;
  vx = random(-5, 5);
  vy = random(-5, 5);
  d = 100;
  speedInc = 1;

  //intro screen initialization
  introTextFont = 50;

  // scorekeeping initialization
  lives = 3;
  score = 0;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  gain = minim.loadFile("gain.mp3");
  loss = minim.loadFile("loss.mp3");
  gameover = minim.loadFile("gameover.mp3");

  // color palette
  colorPalette = loadImage("colorPalette.png");
  myFont = createFont("MorningRainbow.ttf", 28);
  textFont(myFont);
  
  //options
  speedX = 100;
  sizeX = 500;
  
  currColor = yellow;
  
  //images
  imageMode(CENTER);
  dizzy = loadImage("dizzy.png");
  star1 = loadImage("star1.png");
  star2 = loadImage("star2.png");
  sparkles = loadImage("sparkles.png");
  
  star1On = false;
  star2On = false;
  dizzyOn = false;
  sparklesOn = false;
}

void draw() {

    if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
