/*
Name: Ricardo
 Date:6/10/19
 Description: As evidence of your game development skills you will design, develop and test a 
 Two-Player Game on our gaming table.   A single document with your logLine and short 
 description of you game should be shared in a folder title: TableGame2018_##
 
 The game should fulfill the following requirements:
 
 Versus OR CO-Op (2 simultaneous players)
 Goals/Controls communicated
 Narrative based
 Animated Screens
 The following scenes should be implemented: Title, Instructions, Level, Win/Lose, credits
 The game should have a consistent aesthetic, Suitable assets (audio/graphics)
 Distinct Sound for each screen
 4 playable levels (2 for seniors)
 Complete process documentation
 A 30 second trailer
 Self-Assessment/reflection document
 Optional: 2 minute process video (explain your development process)
 The game theme/mechanics are up to you.  It is REQUIRED that you get approval 
 at each stage of development.  This project should provide evidence for each PI 
 in the course.  This project will be the last assessment entered and provides an 
 opportunity to apply all of the skills that have been developed in this course.
 */
import ddf.minim.*;
int state = 0;
PImage Gun1, Gun2, Ammo, GoldGuy, PewGuy, Player1, Player2;
PImage StartScreen, Title, CutScene1, CutScene2, blank;
Minim minim;
startScreen s1;
playScreen1 p1;
playScreen2 p2;
playScreen3 p3;
playScreen4 p4;
CutScenes c1;
endScreens end1;

void setup() {
  minim = new Minim(this);
  s1 = new startScreen();
  p1 = new playScreen1();
  p2 = new playScreen2();
  p3 = new playScreen3();
  p4 = new playScreen4();
  c1 = new CutScenes();
  end1 = new endScreens();
  fullScreen();

  Gun1 = loadImage("Gun.png");
  Gun2 = loadImage("Gun2.png");
  Ammo = loadImage("Ammo.png");

  GoldGuy = loadImage("EnemyGun.png");
  GoldGuy = loadImage("EnemyGold.png");

  Player1 = loadImage("Player1.png");
  Player2 = loadImage("Player2.png");

  StartScreen = loadImage("StartScreen.png");
  Title = loadImage("title.png");
  CutScene1 = loadImage("Instructions1CG.png");
  CutScene2 = loadImage("Instructions2CA.png");
  blank = loadImage("Blank.png");
  imageMode(CENTER);
}
void draw() {
  if (state == 0) {
    s1.draw();
  } else if (state == 1) {
    c1.CollectGuns();
  } else if (state == 2) {
    p1.draw();
  } else if (state == 2) {
    c1.CollectAmmo();
  } else if (state == 3) {
    p2.draw();
  } else if (state == 4) {
    background(0);
  } else if (state == 5) {
    p3.draw();
  } else if (state == 6) {
    background(255);
  } else if (state == 7) {
    p4.draw();
  } else if (state == 8) {
    end1.win();
  } else if (state == 9) {
    end1.credits();
  } else if (state == 10) {
    end1.lose();
  }
}
void keyPressed() {
  if (state == 0) {
    s1.keyPressed();
  } else if (state == 1) {
    c1.keyPressed();
  } else if (state == 2) {
    p1.draw();
  } else if (state == 2) {
    c1.keyPressed();
  } else if (state == 3) {
    p2.keyPressed();
  } else if (state == 4) {
    state = 5;
  } else if (state == 5) {
    p3.keyPressed();
  } else if (state == 6) {
  } else if (state == 7) {
  }
}
void keyReleased() {
  if (state == 0) {
  } else if (state == 1) {
  } else if (state == 2) {
    p1.keyReleased();
  } else if (state == 3) {
    p2.keyReleased();
  } else if (state == 4) {
  } else if (state == 5) {
    p3.keyReleased();
  } else if (state == 6) {
  } else if (state == 7) {
    p4.keyReleased();
  }
}
