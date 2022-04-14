// curved lines
i = 0;
while (i < width) {
  strokeWeight(5);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(i, 0, width, i);
  i += 40;
}

i = 0;
while (i < width) {
  strokeWeight(5);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(0, i, i, height);
  i += 40;
}

i = 0;
while (i < width) {
  strokeWeight(5);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(0, width-i, i, 0);
  i += 40;
}

i = 0;
while (i < width) {
  strokeWeight(5);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(i, height, width, height-i);
  i += 40;
}
