int x = 0;
  
void setup(){
  size(600, 600);
}
void draw(){
  strokeWeight(5);
  background(255);
  ellipse(150, x, 150, 150);
 ellipse(350, (600-x), 150, 150);
x = x + 2;
  x = x % 600;
}
