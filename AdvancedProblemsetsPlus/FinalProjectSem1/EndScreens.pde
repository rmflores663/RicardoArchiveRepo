class EndScreens {
  //float timer;
  int Width = width-100;
  EndScreens() {
  }
  //void resetTimer() {
  //  if (timer > 8) {
  //    timer = 0;
  //  }
  //}
  void resetCredits() {
    Width = width-100;
  }
  void WinScreen() {
    image(winScreen, width/2, height/2, width, height);
    //timer += .01;
    //if (timer >= 5.12) {
    //  state = 4;
    //}
  }
  void LoseScreen() {
    image(loseScreen, width/2, height/2, width, height);
    //timer += .01;
    //if (timer >= 5.8) {
    //  state = 1;
    //}
  }
  void CreditsScreen() {
    background(0);
    pushMatrix();
    fill(0, 120, 120);
    textAlign(CENTER, CENTER);
    translate(width, 0);
    rotate(PI/2);
    textSize(80);
    text("Game By", height/2, 100);
    textSize(70);
    text("Ricardo", height/2, 300);
    textSize(80);
    text("Music and Assets By", height/2, 500);
    textSize(60);
    text("Schuler-less Wonder", height/2, 700);
    textSize(80);
    text("Bugs by:", height/2, 1100);
    textSize(60);
    text("Not Yet", height/2, 1400);
    popMatrix();
    rectMode(CORNER);
    fill(0);
    rect(0, 0, Width, width);
    Width --;
    if(Width < 300){
      Width -= 4;
    }
    if (Width <= 100) {
      resetCredits();
      state = 0;
    }
  }
}
