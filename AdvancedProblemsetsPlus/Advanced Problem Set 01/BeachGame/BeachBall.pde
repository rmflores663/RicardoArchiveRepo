class beachBall {
  PVector location, speed, size;
  float angle, angleAdd;
  boolean Moe;
  PImage BeachBall;
  beachBall(float x, float y, float D) {
    location = new PVector(x, y);
    speed = new PVector(2, 2);
    size = new PVector(D, D);
    Moe = true;
    BeachBall = loadImage("BeachBall.png");
    angleAdd = .1;
  }
  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    if (Moe) {
      angle += angleAdd;
    }
    rotate(angle);
    image(BeachBall, 0, 0, size.x, size.y);
    popMatrix();
  }
  void move() {
    if (Moe) {
      if ((location.x > width-size.x/2 && speed.x == 2) || (location.x < 0+size.x/2 && speed.x == -2)) {
        speed.x *= -1;
      }
      if ((location.y > height-size.y/2 && speed.y == 2) || (location.y < 0+size.y/2 && speed.y == -2)) {
        speed.y *= -1;
      }
      location.x += speed.x;
      location.y += speed.y;
    }
  }
  void mouseClicked() {
    if (dist(mouseX, mouseY, location.x, location.y) < 50) {
      if (Moe) {
        Moe = false;
      } else {
        Moe = true;
      }
    }
  }
  void keyPressed() {
    if (key == '+' && size.x <= width/2) {
      size.x +=1;
      size.y +=1;
    } else if (key == '-' && size.x >= 50) {
      size.x -= 1;
      size.y -= 1;
    }
  }
}