class BackGround {
  PImage backGround;
  PVector location;
  BackGround( int x) {
    backGround = loadImage("BackGround.png");
    location = new PVector(x, height/2);
  }

  void action() {
    image(backGround, location.x, location.y);
    if (keyPressed && key == 'a') {
      location.x += 2;
    } else if (keyPressed && key == 'd') {
      location.x -= 2;
    }
    println(location.x);
  }
}