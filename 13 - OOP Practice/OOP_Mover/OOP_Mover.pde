int n;
Mover[] movers;

void setup() {
  size(800, 600);
  colorMode(HSB);

  //create
  n = 36;
  movers = new Mover[n];
  for (int i = 0; i < n; i++) {
    movers[i] = new Mover();
  }
}

void draw() {

  for (int i = 0; i < n; i++) {
    movers[i].show();
    movers[i].act();
  }
}
