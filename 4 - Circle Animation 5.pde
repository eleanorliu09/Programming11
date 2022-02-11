int x = 0;
  
void setup(){
  size(600, 600);
}
void draw(){
  strokeWeight(5);
  background(255);
  ellipse(x, 300, x/4 , x/4); //called 60 times a second, draw the same ellipse
  // the picture should change so the ellipse moves
  x = x + 5;
  x = x % 600;
}
