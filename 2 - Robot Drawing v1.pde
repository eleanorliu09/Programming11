size(800, 600);

// cyan sky
fill(0, 255, 255);
rect(0, 0, 800, 450);

// green grounds
fill (34,139,34);
rect(0, 450, 800, 600);

// yellow sun
fill(255,255,0);
ellipse(150, 150, 100, 100);

// sun rays
stroke(255,255,0);
strokeWeight(5);
line(150, 90, 150, 30);
line(150, 210, 150, 270);
line(90, 150, 30, 150);
line(210, 150, 270, 150);
line(190, 190, 230, 230);
line(65, 240, 110, 190);
line(250, 65, 190, 110);
line(65, 65, 110, 110);

// mountains
fill(0,128,0);
stroke(0,128,0);
triangle(0, 450, 450, 450, 180, 190);
triangle(400, 450, 800, 450, 650, 170);

// robot wheel
fill(169,169,169);
stroke(169,169,169);
ellipse(320, 500, 80, 80);

//3 poles
line(340, 264, 340, 356);
line(350, 264, 350, 356);
line(360, 264, 360, 356);

// body
fill(148,0,211);
stroke(148,0,211);
rect(271, 360, 100, 150);

//silver band
stroke(169,169,169);
line(371, 400, 271, 400);

//antanae
stroke(0, 0, 0);
strokeWeight(3);
line(340, 240, 300, 140);
line(340, 240, 380, 100);
line(350, 240, 390, 150);

//head
fill(169,169,169);
stroke(169,169,169);
ellipse(350, 230, 100, 100);

//eyewhite
fill(256, 256, 256);
stroke(256, 256, 256);
ellipse(360, 210, 39, 39);
//eyeball
fill(0, 0, 0);
stroke(0, 0, 0);
ellipse(360, 210, 10, 10);
//spots
fill(105,105,105);
stroke(105,105,105);
ellipse(355, 250, 4, 4);
ellipse(330, 230, 4, 4);
ellipse(380, 235, 4, 4);
