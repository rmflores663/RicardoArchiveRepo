class Boss {
  Boss() {
  } 
  void draw() {
    image(Boss, BossX, BossY, w+100, h+100);
    BossX +=O; 
    BossY +=U;
    if (playerX > BossX ) {
      Boss_Right = true;
      Boss_Left = false;
    } else {
      Boss_Left = true;
      Boss_Right = false;
    }
    if (playerY > BossY) {
      Boss_Up = false;
      Boss_Down = true;
    } else {
      Boss_Down = false;
      Boss_Up =  true;
    }
    if (Boss_Right) {
      O = 10;
    }
    if (Boss_Left) {
      O = -10;
    }
    if (Boss_Down) {
      U = 10;
    }
    if (Boss_Up) {
      U = -10;
    }
  }
}
