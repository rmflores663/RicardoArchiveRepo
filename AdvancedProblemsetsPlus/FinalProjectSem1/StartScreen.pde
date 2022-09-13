class StartScreen {
  StartScreen() {
  }
  void draw() {
    pushMatrix();
    image(startB, width/2, height/2, width, height);
    translate(width/2, height/2);
    rotate(radians(angle));
    textSize(100);
    fill(0, 120, 120);
    text("Oblister", 0, 0);
    angle += .7;
    popMatrix();
    pushMatrix();
    rotate(radians(90));
    textSize(70);
    text("Begin", width/2, -90);
    text("Play", width/10, -90);
    popMatrix();
  }
  void keyPressed() {
    if (key == 'f') {
      state = 1;
    } else if (key == 'g') {
      state = 1;
    }
  }
}