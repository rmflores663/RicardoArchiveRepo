class Player {
  PVector location, speed, Original;
  Player(int x, int y) {
    Original = new PVector(x, y);
    location = new PVector(x, y);
    speed = new PVector(0, 0);
  }
  void draw() {
    image(Player1, location.x, location.y, 100, 100);
    move();
  }
  void move() {
    location.x += speed.x;
    location.y += speed.y;
  }
  void keyPressed() {
    if (key == 'w') {
      speed.x = 5;
    }
    if (key == 's') {
      speed.x = -5;
    }
    if (key == 'a') {
      speed.y = -5;
    }
    if (key == 'd') {
      speed.y = 5;
    }
  }
  void keyReleased() {
    if (key == 'w' || key == 's') {
      speed.x = 0;
    }
    if (key == 'a' || key == 'd') {
      speed.y = 0;
    }
  }
  void reset(){
    location.x = Original.x;
    location.y = Original.y;
  }
}
