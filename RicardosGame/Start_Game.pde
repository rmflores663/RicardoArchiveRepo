Red_Robot R1;
Blue_Robot B1;
Player P1;
Tracker T1;
Boss BO1;
Score S;
Timer T;
class Start_Game {
  Start_Game() {
    R1 = new Red_Robot();
    B1 = new Blue_Robot();
    P1 = new Player();
    T1 = new Tracker();
    BO1 = new Boss();
    T = new Timer();
    S = new Score();
    textSize(40);
  }
  void draw() {
    T.draw();
    R1.draw();
    B1.draw();
    P1.draw();
    T1.draw();
    S.draw();
    Mouse = false;
    if (g > l+25000) {
      BOSS = true;
    }
    if (BOSS) {
      BO1.draw();
    }
  }
}