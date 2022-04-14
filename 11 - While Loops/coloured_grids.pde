//drawing grids with random shades
i = 0;
while (i < width) {
  strokeWeight(5);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(i, 0, i, height);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(0, i, width, i);
  i += 40;
}
