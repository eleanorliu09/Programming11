// pallette of colours
color purple = #5c2751;
color violet = #6457a6;
color periwinkle = #9dacff;
color skyblue = #76e5fc;
color blue = #4bc0d9;
int toggle;

void setup(){
size(800, 600);
strokeWeight(5);
textSize(30);
toggle = 1;
} // setup end ===========

void draw(){
background(periwinkle);

fill(violet);
stroke(purple);
rect(300, 300, 150, 150);
//guidelines();

if(toggle > 0) {
  stroke(blue);
  fill(skyblue);
ellipse(100, 100, 100, 100);

}
} //end of draw ==========

void mouseReleased(){
if ( mouseX > 300 && mouseX < 450 && mouseY > 300 && mouseY < 450){
toggle = toggle * -1;
}
// end mouseReleased =====
}

