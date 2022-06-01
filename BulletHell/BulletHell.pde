// Mode variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4; 
final int GAMEOVER = 5; 

//keys
boolean spaceKey, upKey, downKey, rightKey, leftKey;

//stars           
int n;
ArrayList<GameObject> obj = new ArrayList<GameObject>();

//colors
color introblue = #2A2E45;
color gameOverBlue = #67B0F4;
color queenBlue = #3A6692;
color forestGreen = #6BA06A;
color lilac = #daceeb; 
color yellow = #F7F052;
color red = #FF0000;

// images
PImage starfighterImg;
Starfighter player1;
PFont myFont;
PImage gamescreen;

void setup() {
  size(800, 600);
  colorMode(HSB);
  mode = GAME;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  rectMode(CENTER);

  // images
  starfighterImg = loadImage("starfighter.png");
  player1 = new Starfighter();
  obj.add(player1);

  // fonts
  myFont = createFont("Dinosaur.ttf", 28);
  textFont(myFont);
  
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
