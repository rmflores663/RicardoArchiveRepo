class Player {
  Player() {
  }
  void draw() {
    image(Eagle, playerX, playerY, 500, 500);
    if (tooFarX) {
      playerX += playerXmove;
    }
    if (tooFarY) {
      playerY += playerYmove;
    }


    if (mousePressed &&(mouseX < playerX + 150 &&(mouseX > playerX - 150 &&(mouseY < playerY + 150 &&(mouseY > playerY - 150))))) { 
      playerX = mouseX;
      playerY = mouseY;
      tooFarX = tooFarY = false;
    }
    //checks if the mouse is too far
    if (mousePressed &&(mouseX > playerX +150)) {
      tooFarX = true;
    } 
    if (mousePressed &&(mouseX < playerX -150)) {
      tooFarX = true;
    }
    if (mousePressed &&(mouseY < playerY -150)) {
      tooFarY = true;
    }
    if (mousePressed &&(mouseY > playerY +150)) {
      tooFarY = true;
    }

    //checks were the mouse is
    if (mouseX > playerX + 15) {
      playerRight = true;
      playerLeft = false;
    }
    if (mouseX < playerX - 150) {
      playerLeft = true;
      playerRight = false;
    }
    if (mouseY < playerY - 150) {
      playerUp = true;
      playerDown = false;
    }
    if (mouseY > playerY + 150) {
      playerDown = true;
      playerUp = false;
    }
    if (mouseX == playerX) {
      playerLeft = false;
      playerRight = false;
    }
    if (mouseY == playerY) {
      playerUp = false;
      playerDown = false;
    }


    if (playerUp) { 
      playerYmove = -20;
    }
    if (playerDown) {
      playerYmove = 20;
    }
    if (playerLeft) {
      playerXmove = -20;
    }
    if (playerRight) {
      playerXmove = 20;
    }
  }
}