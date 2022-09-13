class River_Objects {
  PVector location;
  River_Objects(float x, float y) {
    location = new PVector(x, y);
  }
  void floaters(int type) {
    if (type == 1) {
      fill(0, 255, 0);
      rect(location.x, location.y, 45, 45);
      fill(255, 0, 0);
      rect(location.x, location.y, 40, 40);
    } else if (type == 2) {
      fill(100, 50, 30);
      rect(location.x, location.y, 150, 45);
    } else if (type == 3) {
      fill(100, 50, 30);
      rect(location.x, location.y, 200, 45);
    }
  }

  void update() {
    if (location.y == 75) {
      location.x+= 1;
    } else if (location.y == 125) {
      location.x -= .85;
    } else if (location.y == 175) {
      location.x += 1;
    } else if (location.y == 225) {
      location.x += .75;
    } else if (location.y == 275) {
      location.x -= .75;
    }

    if (location.x < -25 && (location.y == 275 || location.y == 125)) {
      location.x = width+25;
    }
    if (location.x > width+75 && (location.y == 225)) {
      location.x = -75;
    }
    if (location.x > width+100 && (location.y == 175 || location.y == 75)) {
      location.x = -100;
    }
  }
  boolean isBeingTouched(float x, float y, float type) {
    if (type == 1) {
      if (location.y == y && location.x-30 < x && location.x+30 > x ) {
        return true;
      }
    } else if (type == 2) {
      if (location.y == y && location.x-75 < x && location.x+75 > x ) {
        return true;
      }
    } else if (type == 3) {
      if (location.y == y && location.x-100 < x && location.x+100 > x ) {
        return true;
      }
    }
    return false;
  }
}