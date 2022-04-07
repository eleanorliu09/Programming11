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

void setup() {
  textAlign(CENTER);
  
  rightScore = leftScore = 0;
  timer = 60;
  vx = random(-5, 5);
  vy = random(-5, 5);
  size(800, 600);
  mode = GAME;
  
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
  } else {
    println("Mode error: " + mode);
  }
}
