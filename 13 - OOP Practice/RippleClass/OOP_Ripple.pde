int n;
ArrayList<Ripple> rippleList = new ArrayList<Ripple>();
int count;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer bgm;

void setup() {
  size(800, 600);
  colorMode(HSB);

  //create
  n = 121; 
  for (int i = 0; i < n; i++) {
    rippleList.add(new Ripple());
  }

  minim = new Minim(this);
  bgm = minim.loadFile("bgm.mp3");
}

void draw() {
  bgm.play();

  background(#120a61);

  for (int i = 0; i < rippleList.size(); i++) {
    rippleList.get(i).show();
    rippleList.get(i).act();

    if (rippleList.get(i).getTransparency() <= 0) {
      rippleList.get(i).setX(mouseX);
      rippleList.get(i).setY(mouseY);
      rippleList.get(i).setR(0);
    }
  }

  count++;

  while ( rippleList.size() > n) {
    rippleList.remove(0);
  }
}

void mouseReleased() {

  int newRippleNum = (int) random(10, 20);
  int prevSize = rippleList.size();

  for (int i = 0; i < newRippleNum; i++) {
    rippleList.add(new Ripple());
    rippleList.get(prevSize + i).setX(mouseX);
    rippleList.get(prevSize +i).setY(mouseY);
  }
}
