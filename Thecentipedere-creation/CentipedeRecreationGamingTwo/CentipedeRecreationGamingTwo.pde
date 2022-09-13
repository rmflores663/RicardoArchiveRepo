/*
Name: Ricardo, Christian
 Date: 9/25/19
 Description: Recreate centiped while learning to manage git
 */
int state;
final int startScreen = 0;
final int levelOne = 1;
final int levelTwo = 2;
final int losescreen = 3;
final int win = 4;
final int credits = 5;
startScreen start;
losescreen lose;
winscreen win1;
level2 level2;
credits creditscreen;
levelone level1;
PFont arcadeFont;
PImage mushroom;
PImage mushroom1;
PImage spaceship;
PImage spaceship1;
void setup() {
  size(1920, 900);
  rectMode(CENTER);
  imageMode(CENTER);
  start = new startScreen();
  lose = new losescreen();
  level1 = new levelone();
  level2 = new level2();
  win1 = new winscreen();
  creditscreen = new credits();
  arcadeFont = createFont("PressStart2P-Regular.ttf", 64);
  mushroom = loadImage("Mushroom.png");
  mushroom1 = loadImage("Mushroom1.png");
  spaceship= loadImage("spaceship2.PNG");
  spaceship1= loadImage("spaceship2.PNG");
}
void draw() {

  switch(state) {
  case startScreen:
    start.draw();
    level2.reset();
    level1.reset();
    break;
  case levelOne:
    level1.draw();
    start.reset();
    break;
  case levelTwo:
    level2.draw();
    start.reset();
    break;
  case losescreen:
    lose.draw();
    break;
  case win:
  win1.draw();
    break;
  case credits:
    creditscreen.draw();
    break;
  }
}
void keyReleased() {
  switch(state) {
  case startScreen:
    start.keyReleased ();

    break;
  case levelOne:
    level1.keyReleased();

    break;
  case levelTwo:
    level2.keyReleased();
    break;
  case losescreen:
    lose.keyReleased();
    break;
  case win:
  win1.keyReleased();
    break;
  case credits:
    creditscreen.keyReleased();
    break;
  }
}
void keyPressed() {
  switch(state) {
  case startScreen:
    break;
  case levelOne:
    level1.keyPressed();
    break;
  case levelTwo:
    level2.keyPressed();
    break;
  case losescreen:
    break;
  case win:
    break;
  case credits:
    break;
  }
}
