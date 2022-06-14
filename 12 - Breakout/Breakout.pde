// brick variables
int brickd;
ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
// int[] x;
//int[] y;
int tempx, tempy;
int n;
boolean[] alive; 

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme;

//images
PImage pause, options, play, stop;
PImage gamescreen;
PImage flowers, forest, sunset;

// Fonts
PFont lychee; 
int hue;
String gameName;

// Colors
color[] brickColor;
color gameBackground;
color introColor;
color brickgreen;
color paddleColor;
color ballColor;
color optionsColor;

color grey = #cfcfcf;
color lilac = #daceeb; 
color lavender = #b5abf5;

// Mode variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4; 
final int GAMEOVER = 5; 
int prevMode;
int nameX;

// Ball variables 
int bx, by, bd;
int vx, vy;
boolean akey, dkey, spacekey;

// Paddle variables
int px, py, pd;

int timecount;
int finalscore;

void setup() {
  brickColor = new color[5];
  //brickColor[0] = #79C954;
  brickColor[0] = #63BA3B;
  brickColor[1] = #5BAB36;
  brickColor[2] = #4A8C2C;
  brickColor[3] = #3A6D22;
  brickColor[4] = #284E18;

  gameBackground = #C6DEA6;
  introColor = #9DFBB4;
  brickgreen = #116917;
  paddleColor = #F9DC5C;
  ballColor = #ECC209;
  optionsColor = #def5ab;

  //bricks
  brickd = 30; 
  n = 60;
  alive = new boolean[n];
  for (int i = 0; i < n; i++) {
    alive[i] = true;
  }

  tempx = 25;
  tempy = 25;
  for (int i = 0; i < n; i++) {
    x.add(tempx); 
    y.add(tempy);
    tempx += 50; 
    if (tempx > 580) {
      tempx = 25;
      tempy += 50;
    }
  }

  // align center 
  size(600, 600);
  rectMode(CENTER);
  imageMode(CENTER);
  noStroke();
  mode = INTRO;
  colorMode(HSB);

  // paddle and ball
  bx = width/2;
  by = height - 200;
  bd = 10;

  vx = 0;
  vy = 1;

  px = width/2;
  py = height;
  pd = 100;

  // fonts
  lychee = createFont("Fresh Lychee.ttf", 50);
  textFont(lychee);
  textAlign(CENTER, CENTER);
  hue = 0;

  //buttons
  pause = loadImage("pause.png");
  options = loadImage("options.png");
  play = loadImage("play.png");
  stop = loadImage("stop.png");
  flowers = loadImage("flower.jpg");
  forest = loadImage("forest.jpg");
  sunset = loadImage("sunset.jpg");

  gameName = "Hidden Forest";
  nameX = 120;

  timecount = 0;
  prevMode = 0;

  // music!
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAMEOVER) {
    gameover();
  }
}
