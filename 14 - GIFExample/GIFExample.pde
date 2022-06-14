int numberOfFrames;
PImage[] gif;
int i;

void setup() {
  i = 0;
  size(160, 90);
  numberOfFrames = 8;
  gif = new PImage[numberOfFrames];
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_" + i + "_delay-0.12s.gif");
    i++;
  }
}

void draw() {
  image(gif[i / 12], 0, 0, width, height);
  i++;
  if (i == numberOfFrames * 12) i = 0;
}
