class credits {



  credits() {
    textAlign(CENTER, CENTER);
  }
  void draw()
  {
    background(0); 
    textFont(arcadeFont, 64);
    stroke(#FA3A3A);
    textSize(35);
    text("Made by Christian Garcia and Ricardo Flores", width/2, height/2);
    textSize(25);

    text("press spacebar to go to start", width/2, height/2+100);
  }
  void  keyReleased() {

    if (key==' ')
    {
      state = startScreen;
    }
  }
}