void keyPressed() {
  if (key == ' ') spaceKey = true;
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == 'S' || keyCode == 's') sKey = true;
}

void keyReleased() {
  if (key == ' ') spaceKey = false;
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false; // key: if it types something; keyCode: if it does not type something 
  if (keyCode == 'S' || keyCode == 's') sKey = false;
}
