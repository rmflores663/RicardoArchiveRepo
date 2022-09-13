class TimerS {
  TimerS() {
  }
  void draw() {
    if (TimerW > 490) {
      fill(0, 255, 0);
    }
    if (TimerW < 491 &&(TimerW > 100)) {
      fill(255, 255, 0);
    }
    if (TimerW < 101) {
      fill(255, 0, 0);
    }
  }
}