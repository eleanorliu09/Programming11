int x = 0;
  
void setup(){
  size(600, 600);
}
void draw(){
  strokeWeight(5);
  background(255);
  ellipse(x, x, 200, 200);
  x = x + 2;
  x = x % 600;
}
