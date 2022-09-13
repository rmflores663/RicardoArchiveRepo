class endScreens {
  endScreens() {
  }

  void win() {
    image(blank, 0, 0, width, height);
    text("You Win", width/2, height/2);
  }
  void lose() {
    background(255, 0, 0);
  }
  void credits() {
    background(0, 0, 255);
  }
}
