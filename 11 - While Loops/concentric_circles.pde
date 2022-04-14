// concentric circles with gradient 
i = 760;
float  c1 = 0;

while (i > 0 ) {
  c1 = map(i, width, 0, 0, 255);
  fill(c1, c1, c1);
  strokeWeight(0);
  stroke(c1);
  circle(width/2, height/2, i);
  i -= 1;
}
