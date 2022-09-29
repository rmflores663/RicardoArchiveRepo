Activate A1;
Start_Game SG1;
Limitations L1;
End E1;
Win W1;
float Redx, Redy, BlueX, BlueY, u, k, q, a, w, h, BossX, BossY, O, U, Verticle, Horizontal, state, Add1, Add2, Rectx, Recty, Rectw, Recth, qAdd, aAdd, Counter, Pattern, Px, Py, n, g, l, p, m, e, rockx, rocky, rockplus, playerX, playerY, playerXmove, playerYmove, boxstate, TimerX, TimerY, TimerW, TimerH, Ts;
int  Score, Points;
boolean Red_down, Red_up, Red_left, Red_right, Blue_down, Blue_up, Blue_left, Blue_right, Boss_Up, Boss_Down, Boss_Left, Boss_Right, projectiles, StartScreen, Game, GameOver, GameOverWin, BOSS, PowerUp, Mose, Mouse, Rockup, Rockdown, playerUp, playerDown, playerLeft, playerRight, tooFarX, tooFarY, Double_points, Double_points2;
PImage red, blue, Eagle, Boss, Box, TwoX, Plus2, Startscreen, StartRock, game, lose, win, in;
PFont font;
void setup() {
  //fullScreen();
  size(1920, 1080, P2D);
  A1 = new Activate();
  SG1 = new Start_Game();
  L1 = new Limitations();
  E1 = new End();
  W1 = new Win();
  Box = loadImage("Frc_Qube_2018.png");
  red = loadImage("Red_Robot.png");
  blue = loadImage("Blue_Robot.png");
  Eagle = loadImage("ReecardosEagle.png");
  Boss = loadImage("K_honda_Robot.png"); 
  TwoX = loadImage("Frc_Qube_2018_x2.png");
  Plus2 = loadImage("Frc_Qube2_2018.png");
  Startscreen = loadImage("Frc_2018_Start_Screen(2).png");
  StartRock = loadImage("StartRock.png");
  game = loadImage("FRC_game_background.png");
  lose = loadImage("Frc_game_lose.png");
  win = loadImage("Frc_game_win.png");
  in = loadImage("Frc_game_tut.png");
  Red_down = Red_up = Red_left = Red_right = Blue_down = Blue_up = Blue_left = Blue_right = Game = Boss_Up = Boss_Down = Boss_Left = Boss_Right = projectiles = GameOver = GameOverWin = BOSS =  false;
  Redx= 500;
  Redy= 500;
  Add1 = 25;
  Add2 = 35;
  q= a= u= k = Verticle = Horizontal =  O =  U =  0;
  playerX = 600;
  playerY = 300;
  state =0;
  BlueX= 120;
  BlueY= 600;
  w = h = 252;
  BossX = BossY = 396;
  Points = 1;
  Rectw = Recth = 50;
  Px = 800;
  Py = 400;
  PowerUp = false;
  textSize(20);
  Rockup = true;
  Rockdown = false;
  rockx = 1125;
  rocky = 410;
  font = createFont("8-BIT.TTF", 50);
  textFont(font);
}
void draw() {
  println(Ts, TimerW);
  g = millis();;
  Counter = second();
  if (state == 0) {
    BOSS = false;
    A1.draw();
  }
  if (state == 1) {
    l = millis();
    imageMode(CORNER);
    image(in, 0, 0, width, height);
    if (mousePressed == true) {
      Mose = false;
    } else {
      Mose = true;
    }
    if (Mose) {
      Mouse = true;
    }
    if (mousePressed &&(Mouse)) {
      state = 2;
    }
  }
  if (state == 2) {
    imageMode(CENTER);
    image(game, width/2, height/2, width, height);
    SG1.draw();
    L1.draw();
  }
  E1.draw();
  W1.draw();
}
void mouseReleased() {
  if (state == 2) {
    tooFarX = false;
    tooFarY = false;
  }
}
