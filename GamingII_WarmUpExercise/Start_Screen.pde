class Start_Screen {
  int i = 0;
  Start_Screen() {
  }
  void draw() {
    background(0);
    fill(0, 0, 100);
    rect(width/2, height/4, width, height/2);
    textSize(100);
    fill(0, 255, 0);
    text("FROGGER", width/2, height/4);
    textSize(25);
    fill(255);
    text("Press Space To Continue", width/2, height/2+20);
    textSize(25);
    fill(255);
    text("SEGA                                1981", width/2, height*8/9);
  }
  void keyReleased() {
    if(key == ' '){
     state = 1; 
    }
  }
}