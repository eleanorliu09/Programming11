int x = 10;
  
void setup(){
  size(600, 600);
}
void draw(){
  strokeWeight(5);
  background(255);
  ellipse(300, 300, x, x); //called 60 times a second, draw the same ellipse
  // the picture should change so the ellipse moves
    x = x + 2;
    x = x % 600;
}
