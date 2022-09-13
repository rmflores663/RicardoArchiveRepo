class winscreen {

  int timer;

  winscreen() {

    textAlign(CENTER, CENTER);
    timer=2;
  }

  void draw() {

    background(0);
    textFont(arcadeFont, 64);
    stroke(#FA3A3A);
    textSize(155);
    text("YOU WIN", width/2, height/2);
    textSize(25);
    if (timer >= 1 && timer <= 30) {
      text("press spacebar to go to start", width/2, height/2);
    } else if (timer == 60) {
      timer = 0;
    }
  }

  void  keyReleased() {

    if (key==' ')
    {
      state = startScreen;
    }
  }
}
