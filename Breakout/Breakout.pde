// brick variables
int brickd;
int[] x = new int[60];
int[] y = new int[60];
int tempx, tempy;
int n;
boolean[] alive; 

// Fonts
PFont lychee; 

// Colors
color[] green = {#0C4610, #126918, #188C1F, #1EAE27};
int currGreen;
color pgtea = #C6DEA6;
color mint = #9DFBB4;
color brickgreen = #116917;
color yellow = #F9DC5C;
color yellow2 = #ECC209;

// Mode variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4; 
final int GAMEOVER = 5; 

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
  x = new int[n];
  y = new int[n];
  currGreen = 0;

  tempx = 25;
  tempy = 25;
  for (int i = 0; i < n; i++) {
    x[i] =  tempx; 
    y[i] = tempy;
    tempx += 50; 
    if (tempx > 580) {
      tempx = 25;
      tempy += 50;
    }
  }

  size(600, 600);
  noStroke();
  mode = INTRO;

  // align center 
  rectMode(CENTER);
  imageMode(CENTER);

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
  //lychee = createFont("Fresh Lychee.ttf", 50);
  //textFont(lychee);
  textAlign(CENTER, CENTER);
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
