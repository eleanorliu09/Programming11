// import
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme;

// Mode variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4; 
final int GAMEOVER = 5; 

//keys
boolean spaceKey, upKey, downKey, rightKey, leftKey, sKey;

//stars           
int n;
ArrayList<GameObject> obj = new ArrayList<GameObject>();

//colors
color introblue = #2A2E45;
color gameOverBlue = #67B0F4;
color queenBlue = #3A6692;
color greypurple = #8F8DB9;
color darkviolet = #120D31;
color forestGreen = #6BA06A;
color lilac = #daceeb; 
color darkpurple = #6c1fa6;
color pink = #f5abb8;
color pink2 = #fb91ff;
color pink3 = #f489fa;
color brightpink = #f514db;
color red = #FF0000;
color canary = #ffec99;
color yellow = #ffd900;
color grey = #cfcfcf;
color exp[];
color hotpink = #d62084;
color verylightpurple = #dacbf2;
int hue;

// star fighters
ArrayList<PImage> starfighterImgs = new ArrayList<PImage>();
ArrayList<Float> starfighterNums = new ArrayList<Float>();
int currStarfighter;

// buttons
PImage pause, options, play, stop;
boolean isProtected;

// powerups
PImage potion, heart, lightning, wand;
int wandCount;
PImage redheart;
int protectCount;
boolean isPowerUp;

// explode gif
int numberOfFrames;
PImage[] explodeGif;
int explodeIndex;

// starfighters
Starfighter player1;

// font
PFont myFont;

// pause screen
PImage gamescreen;

// enemy;
int currEnemy;

int score;
int highScore;

void setup() {
  size(800, 600);
  colorMode(HSB);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  rectMode(CENTER);

  // images
  currStarfighter = 1;
  starfighterImgs.add(loadImage("yellowpurple.png"));
  starfighterNums.add(1.8);
  starfighterImgs.add(loadImage("greyblue.png"));
  starfighterNums.add(1.34);
  starfighterImgs.add(loadImage("pink.png"));
  starfighterNums.add(1.45);
  starfighterImgs.add(loadImage("darklightblue.png"));
  starfighterNums.add(1.77);

  // powerups
  heart = loadImage("heart.png");
  lightning = loadImage("lightning.png");
  potion = loadImage("potion.png");
  isProtected = false;
  protectCount = 0;
  wand = loadImage("magicwand.png");
  isPowerUp = false;
  wandCount = 0;

  //buttons
  pause = loadImage("pause.png");
  options = loadImage("options.png");
  play = loadImage("play.png");
  stop = loadImage("stop.png");
  redheart = loadImage("redheart.png");

  // starfighter
  player1 = new Starfighter();
  obj.add(player1);

  // fonts
  myFont = createFont("Dinosaur.ttf", 28);
  textFont(myFont);

  // colors
  exp = new color[5];
  exp[0] = #fff9d9;
  exp[1] = #fcd703;
  exp[2] = #edbb07;
  exp[3] = #edbb07;
  exp[4] = #ed8907;
  hue = 0;

  // keys
  spaceKey = upKey = downKey = rightKey = leftKey = sKey = false;

  // enemy
  currEnemy = 0;

  // explode
  explodeIndex = 0;
  numberOfFrames = 24;
  explodeGif = new PImage[numberOfFrames];
  int i = 0;
  while (i < numberOfFrames) {
    explodeGif[i] = loadImage("frame_" + i + "_delay-0.05s.gif");
    i++;
  }

  // music
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  theme.loop();
  
  score = 0;
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
