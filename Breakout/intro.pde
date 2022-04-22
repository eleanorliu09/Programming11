void intro() {
  background(mint);
  String str = "Breakout";
  

}

void introClicks() {
  mode = GAME;
}

void colorText(){
  if (txt < 256) {
    fill( color(txt, 100, 100));
    text( "Breakout", width/2, 100);
    if (txt == 255) {
      txt = 0;
    }
    txt += 5;
  }
}
