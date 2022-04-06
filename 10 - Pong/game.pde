void game() {
  background(0);
  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  //ball
  circle(ballx, bally, balld);
  
  //move paddles
  if(wkey == true) {lefty -= 5;}
  if (skey == true) lefty += 5;
  if (upkey == true) righty -= 5;
  if (downkey == true) righty += 5;
}

void gameClicks() {
}
