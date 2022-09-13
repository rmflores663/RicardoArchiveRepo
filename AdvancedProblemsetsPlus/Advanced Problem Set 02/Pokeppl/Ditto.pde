class Ditto {
  PImage Ditto;
  PVector location;
  PVector size;
  int verticale, horizontal;
  boolean isPressed1;
  Ditto(int x, int y) {
    Ditto = loadImage("Ditto.png");
    location = new PVector(x, y);
    size = new PVector(100, 100);
    verticale = horizontal = 0;
  }
  void draw() {
    if (isPressed1) {
      tint(230, 0, 0);
    } else {
      tint(255);
    }
    image(Ditto, location.x, location.y, size.x, size.y);
  }
  void grow() {
    if (size.x < 200) {
      size.x ++;
      size.y ++;
    }
  }
  void keyPressed() {
    if (key == 'a') {
      horizontal = -1;
    } else if (key == 'd') {
      horizontal = 1;
    }
    if (key == 's') {
      verticale = 1;
    } else if (key == 'w') {
      verticale = -1;
    }


    if (horizontal == 1) {
      location.x += 5;
    } else if (horizontal == -1) {
      location.x -= 5;
    }

    if (verticale == 1) {
      location.y += 5;
    } else if (verticale == -1) {
      location.y -= 5;
    }


    if (location.x > width-100) {
      location.x = width-100;
    } else if (location.x < 100) {
      location.x = 100;
    }
    if (location.y > height-100) {
      location.y = height-100;
    } else if (location.y < 100) {
      location.y = 100;
    }
  }
  void mousePressed() {
    if ((mouseX > location.x+100 || mouseX < location.x - 100) || (mouseY > location.y +100 || mouseY < location.y-100) && isPressed1) {
      isPressed1 = false;
    }
    if ((mouseX < location.x+100 && mouseX > location.x - 100) && (mouseY > location.y - 100 && mouseY < location.y+100)) {
      isPressed1 = !isPressed1;
    }
  }
}