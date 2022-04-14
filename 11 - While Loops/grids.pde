// drawing grids
i = 0;
while (i < width) {
  line(i, 0, i, height);
  line(0, i, width, i);
  i += 40;
}
