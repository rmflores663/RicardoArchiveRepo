class playScreen1 {
  player p1, p2;
  collectables col1;
  ArrayList<collectables> c1;
  playScreen1() {
    p1 = new player(100, height/2, 1);
    p2 = new player(width-100, height/2, 2);
    c1 = new ArrayList<collectables>();
    for (int i = 0; i < 9; i ++) {
      c1.add(new collectables());
    }
  }
  void draw() {
    image(blank, 0, 0, width, height);
    p1.draw();
    p2.draw();
    for (int i = 0; i < 3; i ++) {
      col1 = c1.get(i);
      col1.gun1(random(0, width/2), random(0, height), 1);
    }
    for (int i = 3; i < 5; i ++) {
      col1 = c1.get(i);
      col1.Gun2(random(0, width/2), random(0, height), 1);
    }


    for (int i = 5; i < 8; i ++) {
      col1 = c1.get(i);
      col1.gun1(random(0, width/2), random(0, height), 2);
    }
    for (int i = 8; i < c1.size(); i ++) {
      col1 = c1.get(i);
      col1.Gun2(random(0, width/2), random(0, height), 2);
    }
  }
  void keyPressed() {
    p1.keyPressed();
    p2.keyPressed();
  }
  void keyReleased() {
    p1.keyReleased();
    p2.keyReleased();
  }
}


class playScreen2 {
  player p1, p2;
  ArrayList<collectables> c1, c2;
  collectables Col1, Col2;
  int AmmoNum;
  playScreen2() {
    p1 = new player(100, height/2, 1);
    p2 = new player(width-100, height/2, 2);
    c1 = new ArrayList<collectables>();
    c1.add(new collectables());
    c1.add(new collectables());
  }
  void draw() {
    image(blank, 0, 0, width, height);
    p1.draw();
    p2.draw();
    for (int i = 0; i < c1.size(); i++) {
      Col1 = c1.get(i);
      if (Col1.collected) {
        c1.add(new collectables());
      }
      Col1.Ammo(random(0, width/2), random(0, height), 1);
    }

    for (int i = 0; i < c1.size(); i++) {
      Col2 = c2.get(i);
      if (Col1.collected) {
        c2.add(new collectables());
      }
      Col2.Ammo(random(width/2, width), random(0, height), 2);
    }
  }
  void keyPressed() {
    p1.keyPressed();
    p2.keyPressed();
  }
  void keyReleased() {
    p1.keyReleased();
    p2.keyReleased();
  }
  void update() {
    for (int i = 0; i < c1.size(); i++) {
      Col1 = c1.get(i);
      if (p1.location.x > Col1.location.x){
        
      }
    }
  }
}


class playScreen3 {
  player p1, p2;
  playScreen3() {
    p1 = new player(100, height/2, 1);
    p2 = new player(width-100, height/2, 2);
  }
  void draw() {
    image(blank, 0, 0, width, height);
    p1.draw();
    p2.draw();
  }
  void keyPressed() {
    p1.keyPressed();
    p2.keyPressed();
  }
  void keyReleased() {
    p1.keyReleased();
    p2.keyReleased();
  }
}


class playScreen4 {
  player p1, p2;
  playScreen4() {
    p1 = new player(100, height/2, 1);
    p2 = new player(width-100, height/2, 2);
  }
  void draw() {
    image(blank, 0, 0, width, height);
    p1.draw();
    p2.draw();
  }
  void keyPressed() {
    p1.keyPressed();
    p2.keyPressed();
  }
  void keyReleased() {
    p1.keyReleased();
    p2.keyReleased();
  }
}
