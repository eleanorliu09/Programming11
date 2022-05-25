// Mode variables
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4; 
final int GAMEOVER = 5; 

//stars
int n;
ArrayList<Star> stars = new ArrayList<Star>();

void setup() {
  size(800, 600);
  colorMode(HSB);
  mode = INTRO;
  
  // stars
  n = 30;
  for (int i = 0; i < n; i++) {
    stars.add(new Star());
  }
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
