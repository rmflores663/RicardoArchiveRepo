class collectables {
  boolean collected;
  PVector location = new PVector(0, 0);
  collectables() {
    collected = false;
  }
  void gun1(float x, float y, float s) {
    location.x = x;
    location.y = y;
    if (!collected) {
      pushMatrix();
      translate(x, y);
      if (s == 1) {
        rotate(PI/2);
      } else if (s == 2) {
        rotate(-PI/2);
      }
      image(Gun1, 0, 0, 50, 50);
      popMatrix();
    }
  }
  void Gun2(float x, float y, float s) {
    location.x = x;
    location.y = y;
    if (!collected) {
      pushMatrix();
      translate(x, y);
      if (s == 1) {
        rotate(PI/2);
      } else if (s == 2) {
        rotate(-PI/2);
      }
      image(Gun2, 0, 0, 50, 50);
      popMatrix();
    }
  }
  void Ammo(float x, float y, float s) {
    location.x = x;
    location.y = y;
    if (!collected) {
      pushMatrix();
      translate(x, y);
      if (s == 1) {
        rotate(PI/2);
      } else if (s == 2) {
        rotate(-PI/2);
      }
      image(Ammo, 0, 0, 30, 30);
      popMatrix();
    }
  }
  void collected() {
    collected = true;
  }
}
