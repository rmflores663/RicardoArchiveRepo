class Tracker {
  Tracker() {
  }
  void draw() {
    if (playerX>Redx) {
      Red_right = true;
      Red_left = false;
    } else {
      Red_left = true;
      Red_right = false;
    }
    if (playerX>BlueX) {
      Blue_right = true;
      Blue_left = false;
    } else {
      Blue_right = false;
      Blue_left = true;
    }
    if (playerY>Redy) {
      Red_down = true;
      Red_up = false;
    } else {
      Red_up = true; 
      Red_down = false;
    }
    if (playerY> BlueY) {
      Blue_down = true;
      Blue_up = false;
    } else {
      Blue_up = true;
      Blue_down = false;
    }
    if (Red_right) {
      q = 6;
    }
    if (Red_left) {
      q = -6;
    }
    if (Red_up) {
      a = -6;
    }
    if (Red_down) {
      a = 6;
    }
    if (Blue_right) {
      u = 7;
    }
    if (Blue_left) {
      u = -7;
    } 
    if (Blue_up) {
      k = -7;
    }
    if (Blue_down) {
      k = 7;
    } 
    Redx +=q;
    Redy +=a;
    BlueX +=u;
    BlueY +=k;
  }
}
