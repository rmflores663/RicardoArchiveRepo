class person {
  PVector location;
  person() {
    location = new PVector(width/2, height/2);
  }
  void draw() {
    fill(0);
    ellipse(location.x, location.y, 25, 25);
    if (location.x > width) {
      location.x = width;
    }
    if (location.x < 0) {
      location.x = 0;
    }
  }
  void keyPressed() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        location.x -= 3;
      }
      if (keyCode == RIGHT) {
        location.x += 3;
      }
    }
  }
  void Background() {
    if (location.x > width/2 && BH2 <= 255) {
      BH2 ++;
    } else if (location.x < width/2 && BH2 > 120) {
      BH2 --;
    }
    if (location.x < width/2 && BH1 <= 255) {
      BH1 ++;
    } else if (location.x > width/2 && BH1 > 120) {
      BH1 --;
    }



    if (Msong.isPlaying() && location.x < width/2) {
      Msong.pause();
    } else if (Msong.isPlaying() == false && location.x > width/2) {
      Msong.loop();
    }

println(Msong2.isPlaying());
   if (Msong2.isPlaying() && location.x > width/2) {
      Msong2.pause();
    } else if (Msong2.isPlaying() == false && location.x < width/2) {
      Msong2.loop();
    }
  }
}