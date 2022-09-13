class player {
  PVector location, Ccolor1, initLocation, location1;
  int type;
  int move1 = 3;
  boolean isDead;
  boolean moveUp, moveDown, moveLeft, moveRight;
  int lives=3;

  player(int x, int y, int _type, boolean _isDead) {
    location = new PVector(x, y);
    initLocation = new PVector(x, y);
    type = _type;
    isDead = _isDead;
  }

  void draw()
  {
    if (!isDead) {
      if (type == 1)
      { 
        tint(#A82CCE);
        image(spaceship, location.x, location.y, 80, 80);
      } else  if (type == 2) {
        tint(0, 0, 240);
        pushMatrix();
        translate(location.x, location.y);
        rotate(PI);
        image(spaceship, 0, 0, 80, 80);
        popMatrix();
        noTint();
      }
    }
    if (isDead) {
      state = 3;
    }
    update();
  }

  void keyPressed() {
    if (type == 1) {
      if (key == 'a') {  
        moveLeft = true;
      }
      if (key == 'd') { 
        moveRight = true;
      }
      if (key == 's') { 
        moveDown = true;
      }
      if (key == 'w') { 
        moveUp = true;
      }
    }
    if (type == 2) {
      if (key== CODED) {
        if (keyCode==RIGHT) {    
          moveRight = true;
        } else if (keyCode==LEFT) {    
          moveLeft = true;
        } else if (keyCode==UP) {    
          moveUp = true;
        } else if (keyCode==DOWN) {    
          moveDown = true;
        }
      }
    }
  }
  void keyReleased() {
    if (type == 1) {
      if (key == 'a') {  
        moveLeft = false;
      }
      if (key == 'd') { 
        moveRight = false;
      }
      if (key == 's') { 
        moveDown = false;
      }
      if (key == 'w') { 
        moveUp = false;
      }
    }
    if (type == 2) {
      if (key== CODED) {
        if (keyCode==RIGHT) {    
          moveRight = false;
        } else if (keyCode==LEFT) {    
          moveLeft = false;
        } else if (keyCode==UP) {    
          moveUp = false;
        } else if (keyCode==DOWN) {    
          moveDown = false;
        }
      }
    }
  }

  void update() {
    if (type == 1) {
      if (location.x > width/5) {
        location.x = width/5;
      }
    } else if (type == 2) {
      if (location.x < width*4/5) {
        location.x = width*4/5;
      }
    }
    if (location.x < 20) {
      location.x = 20;
    }
    if (location.x > width-20) {
      location.x = width-20;
    }
    if (location.y > height-20) {
      location.y = height-20;
    }
    if (location.y < 20) {
      location.y = 20;
    }
    if (type == 1) {
      if (moveLeft) {  
        location.y= location.y- move1;
      }
      if (moveRight) { 
        location.y = location.y+ move1;
      }
      if (moveDown) { 
        location.x = location.x - move1;
      }
      if (moveUp) { 
        location.x = location.x + move1;
      }
    }
    if (type == 2) {
      if (moveRight) {    
        location.y = location.y - move1;
      } else if (moveLeft) {    
        location.y = location.y + move1;
      } else if (moveUp) {    
        location.x = location.x - move1;
      } else if (moveDown) {    
        location.x = location.x + move1;
      }
    }
  }

  void death(float x, float y) {
    if (location.x+25 > x && location.x-25 < x && location.y+25 > y && location.y-25 < y && lives > 0 && type == 1) {   
      lives-= 1;
      reset(false);
      location.x += 50;
    }
    if (location.x+25 > x && location.x-25 < x && location.y+25 > y && location.y-25 < y && lives > 0 && type == 2) {   
      lives-= 1;
      reset(false);
      location.x -= 50;
    }
    if (lives == 0) {   
      state = 3;
      reset(true);
    }
  }
  void reset(boolean resetlives) {
    location = initLocation;
    if (lives == 0 && resetlives) {
      lives = 3;
    }
  }
  void setlives(int _lives) {
    lives = _lives;
  }
}