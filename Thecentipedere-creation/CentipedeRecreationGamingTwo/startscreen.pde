class startScreen {
  int timer;
  float rotate;
  boolean Player1Ready, Player2Ready;
  startScreen() {
    textAlign(CENTER, CENTER);
    timer = 0;
  }
  void draw() {
    background(0);
    textFont(arcadeFont, 64);
    textSize(70);
    fill(0, 255, 0);
    pushMatrix();
    translate(width/2, height/2-75);
    rotate(radians(rotate));
    text("CENTIPEDE", 0, 0);
    popMatrix();
    rotate += .5;
    textSize(25);




    pushMatrix();
    translate(50, height/2);
    rotate(PI/2);
    if (Player1Ready) {
      fill(0, 255, 0);
    }
    if (!Player1Ready) {
      fill(105, 200, 103);
    }
    if (timer >= 1 && timer <= 30) {
      text("Press Red Button", 0, 0);
    } else if (timer == 60) {
      timer = 0;
    }
    popMatrix();




    pushMatrix();
    translate(width-50, height/2);
    rotate(-PI/2);
    if (Player2Ready) {
      fill(0, 255, 0);
    }
    if (!Player2Ready) {
      fill(105, 200, 103);
    }
    if (timer >= 1 && timer <= 30) {
      text("Press Yellow Button", 0, 0);
    } else if (timer == 60) {
      timer = 0;
    }
    popMatrix();
    timer ++;




    if (Player1Ready && Player2Ready) {
      state = levelOne;
    }
  }
  void keyReleased() {
    if (key == 'g') {
      Player1Ready = !Player1Ready;
    }
    if (key == 'm') {
      Player2Ready = !Player2Ready;
    }
  }

  void reset()
  {

    Player1Ready = false;
    Player2Ready = false;
  }
}
