// brick variables
int brickd;
ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
// int[] x;
//int[] y;
int tempx, tempy;
int n;
boolean[] alive; 

//images
PImage pause, options, play, stop;
PImage gamescreen;

// Fonts
PFont lychee; 
int hue;

// Colors
color[] green = {#0C4610, #126918, #188C1F, #1EAE27};
color pgtea = #C6DEA6;
color mint = #9DFBB4;
color brickgreen = #116917;
color yellow = #F9DC5C;
color yellow2 = #ECC209;
color grey = #cfcfcf;
color lilac = #daceeb; 
color lavender = #b5abf5;
color ylg = #def5ab;

// Mode variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4; 
final int GAMEOVER = 5; 
int pausefc;

// Ball variables 
int bx, by, bd;
int vx, vy;
boolean akey, dkey;

// Paddle variables
int px, py, pd;

void setup() {

  //bricks
  brickd = 30; 
  n = 48;
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
  
  pausefc = 1;
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
