// pallette of colours
color neonblue = #5465FF;
color cornflowerblue = #788BFF;
color blue = #9BB1FF;
color periwinkle = #BFD7FF;
color cyan = #E2FDFF;
color glow = #FCF3CF;

// variables for color selection
color selectedColor;

void setup(){
size(800, 600);
strokeWeight(5);
stroke(neonblue);
selectedColor = cornflowerblue;
} // setup end ===========

void draw(){
background(cyan);

tactile(100, 100, 50);
 fill(periwinkle);
circle(100, 100, 100);

tactile(100, 300, 50);
 fill(blue);
circle(100, 300, 100);

 tactile(100, 500, 50);
fill(cornflowerblue);
circle(100, 500, 100);

//indicator

stroke(neonblue);
fill(selectedColor);
square(300, 100, 400);
} //end of draw ==========

void mouseReleased(){
 if ( dist(100, 100, mouseX, mouseY)< 50) {
   selectedColor = periwinkle;
 }
 
  if ( dist(100, 300, mouseX, mouseY)< 50) {
   selectedColor = blue;
 }
 
 if ( dist(100, 500, mouseX, mouseY)< 50) {
   selectedColor = cornflowerblue;
 }
 
} // end mouseReleased =====

void tactile(int x, int y, int r) {
 if ( dist(x, y, mouseX, mouseY)< r) {
   stroke(glow);
 } else {
  stroke(neonblue);
 }
}
