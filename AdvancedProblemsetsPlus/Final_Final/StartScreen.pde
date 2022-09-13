class startScreen {
  boolean PlayerOneReady, PlayerTwoReady;
  float playerOneMove, playerTwoMove, playerOneAdd, playerTwoAdd;
  startScreen() {
    PlayerOneReady = PlayerTwoReady = false;
    playerOneAdd = playerTwoAdd = 1;
  }
  void draw() {
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI/2);
    image(StartScreen, 0, 0, height, width);
    popMatrix();
    playerOneMove = 90;
    playerTwoMove = -90;
    if (PlayerTwoReady && PlayerOneReady && state == 0) {
      state = 1;
    }
    Player1Title();
    Player2Title();
    update();
  }
  void keyPressed() {
    if (key == ' ') {
      PlayerTwoReady = true;
    }
    if (key == 'f') {
      PlayerOneReady = true;
    }
    Player1Title();
    Player2Title();
  }

  void update() {
    if (playerOneMove > 120) {
      playerOneAdd *= -1;
    } else if (playerOneMove < 60) {
      playerOneAdd *= -1;
    }
    if (playerOneMove < -120) {
      playerTwoAdd *= -1;
    } else if (playerOneMove > -60) {
      playerTwoAdd *= -1;
    }

    playerOneMove += playerOneAdd;
    playerTwoMove += playerTwoAdd;
  }

  void Player1Title() {
    pushMatrix();
    translate(width/3, height/2);
    rotate(radians(playerOneMove));
    image(Title, 0, 0);
    popMatrix();
  }

  void Player2Title() {
    pushMatrix();
    translate(width*2/3, height/2);
    rotate(radians(playerTwoMove));
    image(Title, 0, 0);
    popMatrix();
  }
}
