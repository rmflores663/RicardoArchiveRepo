class Car {
  PVector location;
  Car(float x, float y) {
    location = new PVector(x, y);
  }
  void car(int i) {
    if (i == 0) {
      fill(255, 0, 0);
      rect(location.x, location.y, 50, 50);
    } else if (i == 1) {
      fill(25, 175, 25);
      rect(location.x, location.y, 50, 50);
    } else if (i == 2) {
      fill(#A900FF);
      rect(location.x, location.y, 50, 50);
    } else if (i == 3) {
      fill(128);
      rect(location.x, location.y, 100, 50);
    }
  }
  void update() {

    if (location.y >= 525) {
      location.x-= .5;
    } else if (location.y == 475) {
      location.x += .5;
    } else if (location.y == 425) {
      location.x -= 2;
    } else if (location.y == 375) {
      location.x -= .5;
    }


    if (location.x < -25 && (location.y == 525 || location.y == 425)) {
      location.x = width+25;
    }
    if (location.x < -50 && location.y == 375) {
      location.x = width+100;
    }
    if (location.x > width+25 && location.y == 475) {
      location.x = -25;
    }
  }
}  