class bullet {
  PVector location;
  int type, move;
  bullet(float x, float y, int _type) {
    location = new PVector(x, y);
    type = _type;
  }
  void draw() {
    fill(255, 0, 0);
    rect(location.x, location.y, 30, 10);
    update();
  }
  void update() {
    if (type == 1) {
      move = 10;
      location.x += move;
    } else if (type == 2) {
      move = -10;
      location.x += move;
    }
  }
}