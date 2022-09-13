class Objects {
  PImage redG, blueG, greenG, gateway, lazerHolder, lazerHolderX4;
  int speed, speedX4, positionX4, Pposition, PpositionX4;
  float X4Rotate;
  Objects() {
    redG = loadImage("Red_Gem.png");
    greenG = loadImage("GreenGem.png");
    blueG = loadImage("BlueGem.png");
    gateway = loadImage("Gateway.png");
    lazerHolder = loadImage("LazerHolder.png");
    lazerHolderX4 = loadImage("QuadLazerHolder.png");
  }
  void RedGem(float x, float y, boolean collect) {
    if (collect == false) {
      pushMatrix();
      translate(x, y);
      rotate(radians(90));
      image(redG, 0, 0, 100, 100);
      popMatrix();
    }
  }
  void GreenGem(float x, float y, boolean collect) {
    if (collect == false) {
      pushMatrix();
      translate(x, y);
      rotate(radians(90));
      image(blueG, 0, 0, 100, 100);
      popMatrix();
    }
  }
  void BlueGem(float x, float y, boolean collect) {
    if (collect == false) {
      pushMatrix();
      translate(x, y);
      rotate(radians(90));
      image(greenG, 0, 0, 100, 100);
      popMatrix();
    }
  }
  void Portal(float x, float y, boolean collect) {
    if (collect == false) {
      pushMatrix();
      translate(x, y);
      rotate(radians(90));
      image(gateway, 0, 0, 150,  150);
      popMatrix();
    }
  }
  void Lazer(float x, float y, float x2, float y2, float rotate) {
    strokeWeight(40);
    stroke(255, 0, 0);
    line(x, y, x2, y2);
    noStroke();
    pushMatrix();
    translate(x, y);
    rotate(radians(rotate+180));
    image(lazerHolder, 0, 0, 75, 75);
    popMatrix();
    pushMatrix();
    translate(x2, y2);
    rotate(radians(rotate));
    image(lazerHolder, 0, 0, 75, 75);
    popMatrix();
  }
  void Chaser(float x, float y) {
    pushMatrix();
    translate(x, y);
    rotate(radians(X4Rotate));
    image(lazerHolderX4, 0, 0, 150, 150);
    popMatrix();
    X4Rotate+= 5;
  }
}