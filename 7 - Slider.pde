color melon = #f9b5ac;
int bg, tck;

int sliderX;

void setup(){
  bg = 0;
size(800, 600);
tck = 0;

stroke(melon);
fill(melon);
sliderX = 400;
}

void draw(){
background(bg);
strokeWeight(tck);
line(100, 300, 700, 300);
circle(sliderX, 300, 50);
}

void mouseDragged(){
controlSlider();
}
void mouseReleased(){
controlSlider();
}

void controlSlider() {
if(mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
sliderX = mouseX; 
}
  bg = (int) map(sliderX, 100, 700, 0, 255);
 tck = (int) map(sliderX, 100, 700, 0, 15);
}
