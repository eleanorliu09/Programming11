// diagonal lines with a slope of 1
i = 0;
while (i < width * 2) {
  line(0, i, i, 0);
  i += 40;
}

i = 0;
// diagonal lines with a slope of -1
  while (i < width * 2) {
  strokeWeight(5);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(width-i, 0, width, i);
  i += 40;
}
