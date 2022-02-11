int x = 300;
  
void setup(){
  size(600, 600);
}
void draw(){
  strokeWeight(5);
  background(255);
  ellipse(x, 300, 200, 200); //called 60 times a second, draw the same ellipse
  // the picture should change so the ellipse moves
  x = x - 2;
 if (x < 0){
   x += 600;
}
}
