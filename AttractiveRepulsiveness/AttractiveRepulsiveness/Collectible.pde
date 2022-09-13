class Collectible {
  PVector location;
  boolean collected = false;
  int type;
  PImage image;
  Collectible(int x, int y, int _type) {
    location = new PVector(x, y);
    type = _type;
    switch(type) {
    case 1:
      image = loadImage("PortalFace.png");
      break;
    case 2:
      image = loadImage("NorthNeedle.png");
      break;
    case 3:
      image = loadImage("SouthNeedle.png");
      break;
    case 4:
      image = loadImage("WestNeedle.png");
      break;
    case 5:
      image = loadImage("EastNeedle.png");
      break;
    case 6:
      image = loadImage("GlassCollectible.png");
      break;
    }
  }
  void display() {
    imageMode(CENTER);
    if (!collected) {
      switch(type) {
      case 1:
        image(image, location.x, location.y, 100, 100);
        break;
      case 2:
        image(image, location.x, location.y, 100, 100);
        break;
      case 3:
        image(image, location.x, location.y, 100, 100);
        break;
      case 4:
        image(image, location.x, location.y, 100, 100);
        break;
      case 5:
        image(image, location.x, location.y, 100, 100);
        break;
      case 6:
        image(image, location.x, location.y, 100, 100);
        break;
      }
    }
    imageMode(CORNER);
  }
  void check(PVector _location, int _width, int _height) {
    if (location.x-50 < _location.x+_width &&location.x+50 > _location.x-_width) {
      if (location.y-50 < _location.y+_height && location.y+50 > _location.y-_height) {
        collected = true;
      }
    }
  }

  boolean returnState() {
    return collected;
  }
  
  void reset()
  {
   collected = false; 
  }
}
