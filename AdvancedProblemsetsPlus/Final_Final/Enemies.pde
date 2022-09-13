class enemies {
  PVector location, velocity;
  float type, side;
  boolean hit;
  enemies(float x, float y, float _type, float _side) {
    location = new PVector(x, y);
    velocity = new PVector(3, 3);
    type = _type;
    side = _side;
  }

  void draw() {
    if (type == 1) {
      GoldGuy();
    }
    if (type == 2) {
      PewPewGuy();
    }
    if (side == 1 && type == 1) {
      location.y = 100*sin(location.x/100);
      location.x -= velocity.x;
    } else if (side == 1 && type == 2) {
      location.x --;
    }
    if (side == 2 && type == 1) {
      location.y = 100*sin(location.x/100);
      location.x += velocity.x;
    } else if (side == 2 && type == 2) {
      location.x ++;
    }
  }

  void GoldGuy() {
    if (!hit) {
      pushMatrix();
      translate(location.x, location.y);
      if (side == 1) {
        rotate(PI/2);
      } else if (side == 2) {
        rotate(-PI/2);
      }
      image(GoldGuy, 0, 0, 100, 100);
      popMatrix();
    }
  }

  void PewPewGuy() {
    if (!hit) {
      pushMatrix();
      translate(location.x, location.y);
      if (side == 1) {
        rotate(PI/2);
      } else if (side == 2) {
        rotate(-PI/2);
      }
      image(PewGuy, 0, 0, 100, 100);
      popMatrix();
    }
  }
  void Ebullet(){
    
  }

  void checkIfHit(int x, int y, int w, int h) {
    if (!hit) {
      if (x > location.x-100-w && x < location.x+100+w
        && y > location.y-100-h && y < location.y+100+h) {
        hit = true;
      }
    }
  }
}
