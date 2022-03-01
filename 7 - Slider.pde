color melon = #f9b5ac;

int sliderX;

void setup(){
size(800, 600);
strokeWeight(5);
stroke(melon);
fill(melon);
sliderX = 400;
}

void draw(){
background(0);
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
}
