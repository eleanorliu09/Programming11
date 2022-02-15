int hill1, hill2, hill3, hill4, hill5, comet, star;

void setup(){
  size(800, 600);
  hill1 = 0;
  hill2 = 240;
  hill3 = 470;
  hill4 = 630;
  hill5 = 800;
  comet = 0;
  star = 0;
}

void draw(){
  //night sky
  background(25,25,112);
  
  //hills
  fill(8, 3, 43);
  stroke(8, 3, 43);
  rect(0, 500, 800, 600);
  triangle(hill1, 500, hill1 + 120, 450, hill1 + 240, 500);
  triangle(hill2, 500, hill2 + 140, 430, hill2 + 240, 500);
  triangle(hill3, 500, hill3 + 160, 470, hill3+240, 500);
  triangle(hill4, 500, hill4 + 140, 470, hill4+240, 500);
  triangle(hill5, 500, hill5 + 150, 460, hill5+240, 500);

  hill1 = (hill1 >= 800 ) ? (hill1 = -239) : (hill1 += 1);
  hill2 = (hill2 >= 800) ? (hill2 = -239) : (hill2 += 1);
  hill3 = (hill3 >= 800) ? (hill3 = -239) : (hill3 += 1);
  hill4 = (hill4 >= 800) ? (hill4 = -239) : (hill4 += 1);
  hill5 = (hill5 >= 800) ? (hill5 = -239) : (hill5 += 1);

  //// hill debugging
  //print("hill1", hill1);
  //print(" hill2", hill2);
  //print(" hill3", hill3);
  //print(" hill4", hill4);
  //print(" hill5", hill5);
  //println();
  
  //comet tails
  fill (135,206,235, 80);
  stroke (135,206,235, 80);
  triangle(comet, 60 + comet / 10, comet, comet/10, comet-200, 20 + comet / 10);
  
  fill(127,255,212, 80);
  stroke(127,255,212, 80);
  triangle(comet, 50 + comet / 10, comet, 10 + comet/10, comet-150, 20 + comet / 10);
  
  //comet body
  strokeWeight(1);
  fill(135,206,250);
  stroke(135,206,250);
  ellipse(comet, 30 + comet / 10, 60, 60);
  
  fill(173,216,230);
  stroke(173,216,230);
  ellipse(comet, 30 + comet / 10, 45, 45);
  
  fill(240,248,255);
  stroke(240,248,255);
  ellipse(comet, 30 + comet/10, 30, 30);
  comet = (comet >= 815) ? (comet = -15) : (comet += 10);
  
  //stars
  drawStar(30, 100, 5);
  drawStar(70, 750, 6);
  drawStar(120, 120, 6);
  drawStar(170, 170, 5);
  drawStar(210, 90, 5);
  drawStar(260, 250, 5);
  drawStar(315, 170, 5);
  drawStar(356, 100, 6);
  drawStar(390, 110, 6);
  drawStar(423, 150, 5);
  drawStar(490, 750, 6);
  drawStar(542, 90, 5);
  drawStar(580, 50, 5);
  drawStar(600, 170, 6);
  drawStar(623, 200, 6);
  drawStar(700, 120, 6);
  drawStar(780, 160, 6);
}
void mouseReleased() {
  noLoop(); 
}

void drawStar(int x, int y, int z){

  if (star % 60 >= 30 ) {
    fill(255,215,0, 80);
    stroke(255,215,0, 80);
    ellipse(x, y, z * 3, z * 3);
    println(star);
  } 
  // star debugging
  // star++;
  
  fill(251, 255, 111, 90);
  stroke(251, 255, 111, 90);
  ellipse(x, y, z * 2, z * 2);
  
  fill(254, 255, 182);
  stroke(254, 255, 182);
  ellipse(x, y, z, z);

}
