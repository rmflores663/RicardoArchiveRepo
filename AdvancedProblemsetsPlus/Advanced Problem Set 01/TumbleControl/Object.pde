class Baseball {
  PVector locatioN;
  PImage baseBall;
  float angle;
  Baseball(int x, int y) {
    locatioN = new PVector(x, y);
    baseBall = loadImage("BaseBall.png");
  }

  void draw() {
    pushMatrix();
    translate(locatioN.x, locatioN.y);
    rotate(angle);
    image(baseBall, 0, 0);
    popMatrix();
  }

  void keyPressed() {
    if (key == 'd') {
      angle += .1;
    } else if (key == 'a') {
      angle -=.1;
    }
  }
}