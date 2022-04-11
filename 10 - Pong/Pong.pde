import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme, coin;
//https://www.youtube.com/watch?v=QAB2bzVbjdQ

PImage pause, options, play;
PImage planet1, planet2, planet3, planet4, planet5, planet6, planet7, planet8, planet9;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy;

//scoring
int leftScore, rightScore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//colours
color dblue = #093649;
color pink = #EE85B5;
color green = #5C8001;
color yellow = #F3DE2C;
color orange = #FF7F11;
color orangeyellow = #ffbb00;
color darkorange = #ff6a00;
color hotpink = #ff0084;
color bluegrey = #6b73db;
color darkblue2 = #0f178a;
color gameoverblue = #3972db;
color introyellow = #ffea00;
color introskyblue = #7df6ff;
color grey = #cfcfcf;
color readygreen = #2bd95a;
color lightyellow = #fffcc2;
color optionsblue = #3d5ba8;
color optionsyel = #fcd526;

//counter 
int counter;

//fonts
PFont myFont;

//framecount variables
int framecount;

//intro screen variables
float ix, iy, ivx, ivy, id;

void setup() {

  //pause screen variables
  framecount = 1;

  //intro screen variables
  ix = random(200, 600);
  iy = random(200, 600);
  ivx = random(0.5, 2);
  ivy = random(0.5, 2);
  id = 40;

  // music!
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  coin = minim.loadFile("coin.mp3");

  textAlign(CENTER);


  rightScore = leftScore = 0;
  timer = 60;
  vx = random(-5, 5);
  vy = random(-5, 5);
  size(800, 600);

  mode = INTRO;

  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 250;
  rightx = width;
  righty = height/2;
  rightd = 250;

  //initalize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;

  //initialize keyboard var
  wkey = skey = upkey = downkey = false;

  //counter
  counter = -1;
  timer = 3600;

  //fonts
  myFont = createFont("Night Birds.ttf", 28);
  textFont(myFont);

  //buttons
  pause = loadImage("pause.png");
  options = loadImage("options.png");
  play = loadImage("play.png");

  //planets :)
  planet1 = loadImage("planet1.png");
  planet2 = loadImage("planet2.png");
  planet3 = loadImage("planet3.png");
  planet4 = loadImage("planet4.png");
  planet5 = loadImage("planet5.png");
  planet6 = loadImage("planet6.png");
  planet7 = loadImage("planet7.png");
  planet8 = loadImage("planet8.png");
  planet9 = loadImage("planet9.png");
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
  }
}
