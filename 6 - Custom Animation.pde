import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

int hill1, hill2, hill3, hill4, hill5, comet, star, x;
float glxy, s1x, s1y, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23;
PFont myFont;
int w;
int tx1, tx2, tx3;
String str;

void setup(){
  size(800, 600, P2D);
  
  minim = new Minim(this);
  song = minim.loadFile("Song.mp3");
  song.play();
  tx1 = 0;
  tx2 = 0;
  tx3 = 0;
  w = 0;
  hill1 = 0;
  hill2 = 240;
  hill3 = 470;
  hill4 = 630;
  hill5 = 800;
  comet = 0;
  star = 0;
  glxy = 0;
  s1x = 0; 
  s1y = 0;
  s2 = 40; 
  s3 = 50;
  s4 = 70;
  s5 = 120;
  s6 = 170;
  s7 = 190;
  s8 = 210;
  s9 = 260;
  s10 = 290;
  s11 = 356;
  s12 = 390;
  s13 = 423;
  s23 = 440;
  s14 = 490;
  s15 = 515;
  s16 = 542;
  s17 = 580;
  s18 = 600;
  s19 = 623;
  s20 = 700;
  s21 = 734;
  s22 = 770;
}

void draw(){
  //night sky
  background(25,25,112);
  
  stroke(138,43,226, 75);
  fill(138,43,226, 75);
  rect(0, 140, 800, 400);
  
  stroke(147,112,219, 75);
  fill(147,112,219, 75);
  rect(0, 260, 800, 400);
  
  stroke(186,85,211, 75);
  fill(186,85,211, 75);
  rect(0, 360, 800, 600);

  stroke(221,160,221, 68);
  fill(221,160,221, 68);
  rect(0, 420, 800, 400);
  
  stroke(255,105,180, 65);
  fill(255,105,180, 65);
  rect(0, 460, 800, 400);
  
  // pink star clouds
  stroke(255,20,147, 70);
  fill(255,20,147, 70);
  ellipse(glxy, 480, 120, 30);
  ellipse(glxy + 400, 470, 120, 30);
  glxy = (glxy >= 800 ) ? (glxy = -59.5) : (glxy += 0.5);
  
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
  
  drawComet(comet);
  comet = (comet >= 815) ? (comet = -15) : (comet += 10);
  
  //stars
  drawStar1(5);
  drawStar(s2, 300, 7);
  drawStar(s3, 200, 6);
  drawStar(s4, 20, 6);
  drawStar(s5, 120, 6);
  drawStar(s6, 170, 5);
  drawStar(s7, 270, 6);
  drawStar(s8, 90, 5);
  drawStar(s9, 30, 5);
  drawStar(s10, 270, 6);
  drawStar(s11, 100, 6);
  drawStar(s12, 110, 6);
  drawStar(s13, 150, 5);
  drawStar(s14, 750, 6);
  drawStar(s15, 170, 5);
  drawStar(s16, 90, 5);
  drawStar(s17, 50, 5);
  drawStar(s18, 170, 6);
  drawStar(s19, 200, 6);
  drawStar(s20, 120, 6);
  drawStar(s21, 290, 6);
  drawStar(s22 , 160, 6);
  drawStar(s23, 250, 6);
  
s1x = (s1x >= 802) ? (s1x = -2) : (s1x += 0.5);
s2 = (s2 >= 802) ? (s2 = -2) : (s2 += 0.5);
s3 = (s3 >= 802) ? (s3 = -2) : (s3 += 0.5);
s4 = (s4 >= 802) ? (s4 = -2) : (s4 += 0.5);
s5 = (s5 >= 802) ? (s5 = -2) : (s5 += 0.5);
s6 = (s6 >= 802) ? (s6 = -2) : (s6 += 0.5);
s7 = (s7 >= 802) ? (s7 = -2) : (s7 += 0.5);
s8 = (s8 >= 802) ? (s8 = -2) : (s8 += 0.5);
s9 = (s9 >= 802) ? (s9 = -2) : (s9 += 0.5);
s10 = (s10 >= 802) ? (s10 = -2) : (s10 += 0.5);
s11 = (s11 >= 802) ? (s11 = -2) : (s11 += 0.5);
s12 = (s12 >= 802) ? (s12 = -2) : (s12 += 0.5);
s13 = (s13 >= 802) ? (s13 = -2) : (s13 += 0.5);
s14 = (s14 >= 802) ? (s14 = -2) : (s14 += 0.5);
s15 = (s15 >= 802) ? (s15 = -2) : (s15 += 0.5);
s16 = (s16 >= 802) ? (s16 = -2) : (s16 += 0.5);
s17 = (s17 >= 802) ? (s17 = -2) : (s17 += 0.5);
s18 = (s18 >= 802) ? (s18 = -2) : (s18 += 0.5);
s19 = (s19 >= 802) ? (s19 = -2) : (s19 += 0.5);
s20 = (s20 >= 802) ? (s20 = -2) : (s20 += 0.5);
s21 = (s21 >= 802) ? (s21 = -2) : (s21 += 0.5);
s22 = (s22 >= 802) ? (s22 = -2) : (s22 += 0.5);
s23 = (s23 >= 802) ? (s23 = -2) : (s23 += 0.5);
w = w + 10;
  // text
  textAlign(CENTER, CENTER);
  String[] lines = loadStrings("list.txt");
  fill(255, 215, 0, tx3);
  myFont = createFont("Freestyle Script", 28);
  textFont(myFont);
  if (tx2 % 600 == 0) {
    str = lines[ (int) random(lines.length)];
  }
  
  if(tx1 < 100) {
  tx3 = tx1*255/100;
  } else if (tx1 < 500){
  tx3 = 255;
  } else if (tx1 < 600) {
  tx3 = (600 - tx1)*255/100;
  } else if (tx1 == 600){
  tx1 = 0;
  }
  text(str, 400, 400);
  
   tx1 ++;
   tx2 ++;
}
void mouseReleased() {
  noLoop(); 
}

void drawStar1(int z) {
 pushMatrix();
   translate(s1x, 100+ 3*sin(0.5*radians(w)));
   rotate(radians(w));
  if (star % 60 >= 30 ) {
    fill(255,215,0, 80);
    stroke(255,215,0, 80);
    ellipse(0, 0, z * 3, z * 3);
    
    // star debugging
    // println(star);
  } 

  star++;
  
  fill(251, 255, 111, 90);
  stroke(251, 255, 111, 90);
  ellipse(0, 0, z * 2, z * 2);
  
  fill(254, 255, 182);
  stroke(254, 255, 182);
  ellipse(0, 0, z, z);
  popMatrix();
}
void drawStar(float x, int y, int z){
  pushMatrix();
   translate(0, 3*sin(0.5*radians(w)));
  if (star % 60 >= 30 ) {
    fill(255,215,0, 80);
    stroke(255,215,0, 80);
    ellipse(x, y, z * 3, z * 3);
    
    // star debugging
    // println(star);
  } 

  star++;
  
  fill(251, 255, 111, 90);
  stroke(251, 255, 111, 90);
  ellipse(x, y, z * 2, z * 2);
  
  fill(254, 255, 182);
  stroke(254, 255, 182);
  ellipse(x, y, z, z);
  popMatrix();
}

void drawComet(int x){
  pushMatrix();
  translate(x, 0);
    //comet tails
  fill (135,206,235, 80);
  stroke (135,206,235, 80);
  triangle(comet, 60 + comet/ 10, comet, comet/10, comet-200, 20 + comet / 10);
  
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
   
  popMatrix(); 
}
