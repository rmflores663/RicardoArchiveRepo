class Asteroid {
  PVector speed, location, size;
  float opasity, angle, angleAdd, health, tint;
  Asteroid(float x, float y, float vx, float vy, float Size) {
    tint = map(Size, 0, width, 0, 255);
    angleAdd = .05;
    health = 100;
    speed = new PVector(vx, vy);
    location = new PVector(x, y);
    size = new PVector(Size, Size);
  }
  void draw() {
    if (health < 0) {
      health = 0;
    }
    pushMatrix();
    translate(location.x, location.y);
    if (health > 0) {
      angle += angleAdd;
    }
    rotate(angle);
    tint(tint, 100, tint);
    image(Asteroid, 0, 0, size.x, size.y);
    popMatrix();
    println(health);
  }
  void move() {
    if (health > 0) {
      if (location.x < size.x/3 || location.x > width-(size.x/3)) {
        speed.x *= -1;
        angleAdd *= -1;
      }
      if (location.y < size.x/3 || location.y > height-(size.y/3)) {
        speed.y *= -1;
        angleAdd *= -1;
      }
      location.x += speed.x;
      location.y += speed.y;
    }
  }

  void mouseClicked() {
    if (dist(location.x, location.y, mouseX, mouseY) < size.x/3) {
      health -= 5;
    }
  }
}