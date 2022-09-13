class Limitations {
  Limitations() {
  }
  void draw() {
    if (Redx > width) {
      Redx = width;
    }
    if (Redy > height) {
      Redy = height;
    }
    if (Redx < 0) {
      Redx = 0;
    }
    if (Redy < 0) {
      Redy = 0;
    }
    if (BlueX > width) {
      BlueX = width;
    }
    if (BlueY > height) {
      BlueY = height;
    }  
    if (BlueX < 0) {
      BlueX = 0;
    }
    if (BlueY < 0) {
      BlueY = 0;
    }
    if (mouseX > width) {
      mouseX = width;
    }
    if (mouseY > height) {
      mouseY = height;
    }  
    if (mouseX < 0) {
      mouseX = 0;
    }
    if (mouseY < 0) {
      mouseY = 0;
    }
    if (BossX > width) {
      BossX = width;
    }
    if (BossY > height) {
      BossY = height;
    }  
    if (BossX < 0) {
      BossX = 0;
    }
    if (BossY < 0) {
      BossY = 0;
    }
  }
}