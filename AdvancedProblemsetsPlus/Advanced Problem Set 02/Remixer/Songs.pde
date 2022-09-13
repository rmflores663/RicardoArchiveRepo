class song1 {
  float angle;
  song1() {
  }
  void draw() {
    pushMatrix();
    translate(width/5, 100);
    rotate(angle);
    image(song1, 0, 0, 150, 150);
    popMatrix();
  }
  void keyPressed() {
    if (key == 'a') {
      angle += .08;
      if (Background1.isPlaying()) {
      } else {
        Background1.loop();
        Background2.pause();
        Background3.pause();
      }
    }
  }

  void mousePressed() {
    if (!Background1.isPlaying()) {
      Background1.rewind();
    }
    if (dist(mouseX, mouseY, width/5, 100)< 150) {
      Background1.play();
    }
  }
}





class song2 {
  float angle;
  song2() {
  }
  void draw() {
    pushMatrix();
    translate(width*1/2, 100);
    rotate(angle);
    image(song2, 0, 0, 150, 150);
    popMatrix();
  }
  void keyPressed() {
    if (key == 's') {
      angle += .08;
      if (Background2.isPlaying()) {
      } else {
        Background2.loop();
        Background1.pause();
        Background3.pause();
      }
    }
  }

  void mousePressed() {
    if (!Background2.isPlaying()) {
      Background2.rewind();
    }
    if (dist(mouseX, mouseY, width*1/2, 100)< 150) {
      Background2.play();
    }
  }
}





class song3 {
  float angle;
  song3() {
    //song by Jacob and Alonso Ft.Ricardo
  }
  void draw() {
    pushMatrix();
    translate(width*4/5, 100);
    rotate(angle);
    image(song3, 0, 0, 150, 150);
    popMatrix();
  }
  void keyPressed() {
    if (key == 'd') {
      angle += .08;
      if (Background3.isPlaying()) {
      } else {
        Background1.pause();
        Background2.pause();
        Background3.loop();
      }
    }
  }

  void mousePressed() {
    if (!Background3.isPlaying()) {
      Background3.rewind();
    }
    if (dist(mouseX, mouseY, width*4/5, 100)< 150) {
      Background3.play();
    }
  }
}