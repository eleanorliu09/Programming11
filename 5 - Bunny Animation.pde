int bh1, bh2, bh3, sh1, sh2, sh3, sh4, sh5, cld, bn;

void setup(){
  size(800, 600);
  bh1 = 0;
  bh2= 400;
  bh3 = 800;
  sh1 = -100;
  sh2 = 100;
  sh3 = 300;
  sh4 = 500;
  sh5 = 700;
  bn = 100;
  cld = 10;
}

void draw(){
  //sky
  background(0,206,209);
  
    //cloud
    fill(255);
  ellipse(cld, 150, 80, 80);
  ellipse(cld+70, 150, 80, 80);
  ellipse(cld + 35, 110, 80, 80);
  cld = ( cld > 1000 ) ? (cld = -69) : (cld += 1);
  
  //background hills
  fill(154,205,50);
  stroke(154,205,50);
  ellipse(bh1, 350, 400,400);
  ellipse(bh2, 350, 400, 400);
  ellipse(bh3, 350, 400, 400);
  
  bh1 = ( bh1 >= 1000 ) ? (bh1 = -198) : (bh1 += 2);
  bh2 = ( bh2 >= 1000 ) ? (bh2 = -198) : (bh2 +=2);
  bh3 = ( bh3 >= 1000 ) ? (bh3 = -198) : (bh3 += 2);
  
  // small hills
  fill(34,139,34);
  stroke(34,139,34);
  
  ellipse(sh1, 350, 200, 200);
  ellipse(sh2, 350, 200, 200);
  ellipse(sh3, 350, 200, 200);
  ellipse(sh4, 350, 200, 200);
  ellipse(sh5, 350, 200, 200);

  sh1 = ( sh1 >= 900 ) ? (sh1 = -96) : (sh1 += 4);
  sh2 = ( sh2 >= 900 ) ? (sh2 = -96) : (sh2 += 4);
  sh3 = ( sh3 >= 900 ) ? (sh3 = -96) : (sh3 += 4);
  sh4 = ( sh4 >= 900 ) ? (sh4 = -96) : (sh4 += 4);
  sh5 = ( sh5 >= 900 ) ? (sh5 = -96) : (sh5 += 4);
  
  // debugging small hills (to remove the gap between 2 hills)
  print("sh1", sh1);
  print(" sh2", sh2);
  print(" sh3", sh3);
  print(" sh4", sh4);
  print(" sh5", sh5);
  println();
  
  //ground
  fill(245, 189, 31);
  rect(0, 350, 800, 600);
  
   //bunny
  fill(255);
  stroke(255);
  ellipse(bn, 400, 200, 200);
  ellipse(bn - 50, 300, 50, 100);
  ellipse(bn + 50, 300, 50, 100);
  fill(0);
  ellipse(bn - 35, 400, 20, 20);
  ellipse(bn + 35, 400, 20, 20);
  bn = ( bn > 1000 ) ? (bn = -144) : (bn += 6);
  
}

void mouseReleased() {
  noLoop(); 
}
