class Platform
{
  PVector position, OPos;
  String polarity;
  int colors =255;
  boolean contact, contact2;
  PImage platform;



  Platform(float x, float y, String p)
  {
    position = new PVector(x, y);
    OPos = position;
    polarity = p;
    contact = false;
    if (polarity == "Positive") {
      platform = loadImage("PositivePlatform.png");
    } else if (polarity == "Negative") { 
      platform = loadImage("NegativePlatform.png");
    } else platform = loadImage("NormalPlatform.png");
  }

  void display()
  {
    fill(colors);
    image(platform, position.x, position.y, 100, 25);
  }

  boolean bounce;
  void moveH(int x, int x2, int speed) {
    if (position.x < x || position.x > x2) {
      bounce = !bounce;
    }
    if (bounce) {
      position.x -= speed;
    } else {
      position.x += speed;
    }
  }

  void moveV(int y, int y2, int speed) {
    if (position.x < y || position.x > y2) {
      bounce = !bounce;
    }
    if (bounce) {
      position.y -= speed;
    } else {
      position.y += speed;
    }
  }
  void resetPos(){
    position = OPos;
  }
}
