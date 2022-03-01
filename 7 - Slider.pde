color melon = #f9b5ac;
int bg, tck;
float pct;

int sliderX;

void setup(){
  bg = 0;
size(800, 600);
tck = 10;
pct = 50;
stroke(melon);
fill(melon);
sliderX = 400;
}

void draw(){
background(bg);
strokeWeight(tck);
line(100, 300, 700, 300);
circle(sliderX, 300, 50);
text(pct, 400, 80);
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
 tck = (int) map(sliderX, 100, 700, 0, 20);
 pct =  map(sliderX, 100, 700, 0, 100);
}
