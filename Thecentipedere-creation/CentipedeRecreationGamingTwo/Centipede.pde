class centipede {
  PVector location, Ccolor;
  int type;
  int Xmove;
  int Ymove = 10;
  int Size = 25;
  int Side; 
  int LEFT_ = 1; 
  int RIGHT_ = 2;
  boolean isDead;
  centipede(int x, int y, int _type, boolean _isDead) {
    location = new PVector(x, y);
    type = _type;
    isDead = _isDead;
    if (x > width/2) {
      Xmove = 1;
      Side = LEFT_;
    }
    if (x < width/2) {
      Xmove = -1; 
      Side = RIGHT_;
    }
  }
  void draw() {
    rectMode(CENTER);
    imageMode(CENTER);
    if (!isDead && type == 1) {
      stroke(255, 0, 0);
      fill(0, 255, 0);
      rect(location.x, location.y, Size, Size);
    } else if (!isDead && type == 2) {
      stroke(0, 0, 255);
      fill(250, 0, 255);
      rect(location.x, location.y, Size, Size);
    }
    if (isDead && location.x < width/2) {
      image(mushroom, location.x, location.y, Size, Size);
    } else if (isDead && location.x > width/2) {
      image(mushroom1, location.x, location.y, Size, Size);
    }
  }
  void update() {
    if (!isDead) {
      location.y += Ymove;
      if (location.y > height || location.y < 0) {
        Ymove *= -1;
        location.x += 50*Xmove;
      }
      if (location.x < 40) {
        Xmove *= -1;
        location.x = 40;
      }
      if (location.x > width-40) {
        Xmove *= -1;
        location.x = width-40;
      }
      if (Side == 1 && location.x > width/2 ) {
        Xmove *= -1;
        location.x = width/2;
      } else if (Side == 2 && location.x < width/2) {
        Xmove *= -1;
        location.x = width/2;
      }
    }
  }
  void bounce(float x, float y) {
    if (!isDead) {
      if (location.x+25 > x && location.x-25 < x && location.y+25 > y && location.y-25 < y) {
        Ymove *= -1;
        location.x += 50*Xmove;
      }
    }
  }
  boolean Die(float x, float y) {
    if (location.x+25 > x && location.x-25 < x && location.y+25 > y && location.y-25 < y) {
      isDead = true;
      return true;
    }
    return false;
  }
}
