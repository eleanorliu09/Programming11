void keyPressed() {
  if (key == ' ') spaceKey = true;
  if (key == UP) upKey = true;
  if (key == DOWN) downKey = true;
  if (key == LEFT) leftKey = true;
  if (key == RIGHT) rightKey = true;
}

void keyReleased() {
  if (key == ' ') spaceKey = false;
  if (key == UP) upKey = false;
  if (key == DOWN) downKey = false;
  if (key == LEFT) leftKey = false;
  if (key == RIGHT) rightKey = false;
}
