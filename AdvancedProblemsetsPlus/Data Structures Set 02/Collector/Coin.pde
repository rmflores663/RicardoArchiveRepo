class coin {
  PVector location;
  PVector velocity;
  boolean isPressed, isAwarded;
  AudioPlayer collect;
  coin(float x, float y, float Xs, float Ys) {
    strokeWeight(25);
    location = new PVector(x, y);
    velocity = new PVector(Xs, Ys);
    collect = minim.loadFile("Collect.wav");
    isPressed = false;
    isAwarded = false;
  }


  void draw() {
    if (!isPressed) {
      fill(0, 0);
      if (velocity.x != 0 || velocity.y != 0) {
        stroke(255, 255, 0);
      } else {
        stroke(255, 215, 0);
      }
      ellipse(location.x, location.y, 100, 100);
      location.x += velocity.x;
      location.y += velocity.y;
      isOutOfBounds(location.x, location.y, 50);
    }
  }

  void mousePressed() {
    if (dist(mouseX, mouseY, location.x, location.y) < 75) {
      isPressed = true;
    }
    collect.play();
  }

  void isOutOfBounds(float x, float y, float s) {
    if (x > width-s || x < 0+s) {
      velocity.x *= -1;
    }
    if (y > height-s || y < 0+s) {
      velocity.y *= -1;
    }
  }
  int collect() {
    if (isPressed && !isAwarded) {
      if (dist(mouseX, mouseY, location.x, location.y) < 75 && velocity.x == 0 || velocity.y == 0) {
        isAwarded = true;
        return 1;
      } else if (dist(mouseX, mouseY, location.x, location.y) < 75 && velocity.x != 0 || velocity.y != 0) {
        isAwarded = true;
        return 2;
      }
    }

    return 0;
  }
}