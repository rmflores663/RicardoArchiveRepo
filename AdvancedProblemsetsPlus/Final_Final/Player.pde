class player {
  PVector location, velocity;
  float type;
  player(float x, float y, float _type) {
    location = new PVector(x, y);
    velocity = new PVector(5, 5);
    type = _type;
  }
  void draw() {
    if (type == 1) {
      pushMatrix();
      translate(location.x, location.y);
      rotate(PI/2);
      image(Player1, 0, 0, 100, 100);
      popMatrix();
    } else if (type == 2) {
      pushMatrix();
      translate(location.x, location.y);
      rotate(-PI/2);
      image(Player2, 0, 0, 100, 100);
      popMatrix();
    }
    update();
    location.x += velocity.x;
    location.y += velocity.y;
  }

  void keyPressed() {
    if (type == 1) {
      if (key == 'w') {
        velocity.x = -5;
      }
      if (key == 's') {
        velocity.x = 5;
      }
      if (key == 'a') {
        velocity.y = 5;
      }
      if (key == 'd') {
        velocity.y = -5;
      }
    }
    if (type == 2) {
      if (key == CODED) {
        if (key == UP) {
          velocity.x = -5;
        }
        if (key == DOWN) {
          velocity.x = 5;
        }
        if (key == LEFT) {
          velocity.y = 5;
        }
        if (key == RIGHT) {
          velocity.y = -5;
        }
      }
    }
  }

  void keyReleased() {
    if (type == 1) {
      if (key == 'w') {
        velocity.x = 0;
      }
      if (key == 's') {
        velocity.x = 0;
      }
      if (key == 'a') {
        velocity.y = 0;
      }
      if (key == 'd') {
        velocity.y = 0;
      }
    }
    if (type == 2) {
      if (key == CODED) {
        if (key == UP) {
          velocity.x = 0;
        }
        if (key == DOWN) {
          velocity.x = 0;
        }
        if (key == LEFT) {
          velocity.y = 0;
        }
        if (key == RIGHT) {
          velocity.y = 0;
        }
      }
    }
  }

  boolean touched(float x, float y, float w, float h) {
    if (location.x < x-w/2 && location.x > x+w/2
      && location.y < y-h/2 && location.y > y+h/2) {
      return true;
    }
    return false;
  }

  void update() {
    if (location.x > width || location.x < 0) {
      velocity.x = 0;
    }
    if (location.y > height || location.y < 0) {
      velocity.y = 0;
    }
    if (type == 1) {
      if (location.x > width/2) {
        location.x = width/2;
      }
    } else if (type == 2) {
      if (location.x < width/2) {
        location.x = width/2;
      }
    }
  
  }
}
