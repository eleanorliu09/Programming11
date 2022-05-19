int n;
Pixel[] myPixels;
ArrayList<PImage> images = new ArrayList<PImage>();
int count, framecount;
Mover mover;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  imageMode(CENTER);
  colorMode(HSB);

  images.add(loadImage("parrot.jpg"));
  images.add(loadImage("penguin.jpg"));
  images.add(loadImage("eagle.jpg"));
  images.add(loadImage("duck.jpg"));

  count = 0;
  framecount = 0;

  noStroke();

  mover = new Mover();
  n = 121; 
  myPixels = new Pixel[n];
  for (int i = 0; i < n; i++) {
    myPixels[i] = new Pixel();
  }
}

void draw() {
  //create

  image(images.get(count % images.size()), width/2, height/2, 600, 600);

  for (int i = 0; i < n; i++) {
    myPixels[i].show();
    myPixels[i].act();
    setColour();
  }

  framecount++;

  if (framecount % 60 == 0) {
    count ++;
  }

  mover.show();
  mover.act();
}

void setColour() {
  for (int i = 0; i < myPixels.length; i++) {
    int myX = myPixels[i].getX();
    int myY = myPixels[i].getY();
    myPixels[i].setC(myX, myY);
  }
}
