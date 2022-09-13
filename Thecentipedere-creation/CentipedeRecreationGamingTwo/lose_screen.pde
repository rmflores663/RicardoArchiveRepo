class losescreen {

  int timer2;
  losescreen() {
    textAlign(CENTER, CENTER);
    timer2 = 0;
  }
  void draw()
  {
    background(0); 
    textFont(arcadeFont, 64);
    stroke(#FA3A3A);
    textSize(155);
    text("YOU LOSE", width/2, height/2);
    textSize(25);
    if (timer2 >= 1 && timer2 <= 30) {
      text("press spacebar to go to start", width/2, height/2);
    } else if (timer2 == 60) {
      timer2 = 0;
    }
  }

  void  keyReleased() {

    if (key==' ')
    {
      state = 5;
    }
  }
}