class End {
  End() {
  }
  void draw() {
    imageMode(CENTER);
    textSize(100);
    if (playerX < BlueX+60 &&(playerX > BlueX-70 && (playerY < BlueY + 60 && ( playerY > BlueY - 60)))) {
      state = 3;
      n = millis();
    }
    if (playerX < Redx+60 &&(playerX > Redx-70 &&(playerY < Redy+60 &&(playerY > Redy-60)))) {
      state = 3;
      n = millis();
    }
    if (BOSS) {
      if (playerX < BossX+60 &&(playerX > BossX-70 &&(playerY < BossY+60 &&(playerY > BossY-60)))) {
        state = 3;
        n = millis();
      }
    }
    if (state == 3) {
      Double_points = false;
      playerX = 1000;
      playerY = 300;
      p = second();
      image(lose, width/2, height/2, width, height);
      state = 3;
      BOSS = false;
      text("Final Score "+Score, 50, 100);
      fill(255);
      if (mousePressed == true) {
        Mose = false;
      } else {
        Mose = true;
      }
      if (Mose) {
        Mouse = true;
      }
      if (mousePressed &&(Mouse)) {
        state = 0;
      }
      if (g > n+9000 &&(state == 3)) {
        state = 0;
      }
    }
  }
}
