/*
Ricardo
 You will be re-creating a classic game as a prototype. You do NOT need to create graphics for this 
 (but you CAN). The goal is to QUICKLY create a playable prototype that allows a player to engage in
 key mechanics. The following is a set of requirements:
 - Title Screen
 - Playable Level
 - End Screen
 - Credits Screen
 - Arrow keys for control
 Create classes/objects for your player, enemies, goals, obstacles…..EVERYTHING! This exercise is
 meant as a refresher for your programming skills and to assess everyone’s skill level. All screens
 should be animated….KEEP IT FUNCTIONAL.  Don't remember objects/classes?  Not a worry just do what
 you can with the tools you do have...
 */
Play_Screen Play;
Start_Screen Start;
EndScreens end;
int state;
void setup() {
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  noStroke();
  size(800, 600);
  //fullScreen();
  Play = new Play_Screen();
  Start = new Start_Screen();
  end = new EndScreens();
  state = 0;
}
void draw() {
  if (state == 0) {
    Start.draw();
    if (Play.frog.location.y != height-25) {
      Play.frog.location.y = height-25;
    }
    if (Play.frog.location.x != width/2) {
      Play.frog.location.x = width/2;
    }
    if (Play.TimerWidth != 250) {
      Play.TimerWidth = 250;
    }
  } else if (state == 1) {
    Play.draw();
    if (Play.frog.location.y == 25) {
      state = 3;
    } else if (Play.TimerWidth < 0) {
      state = 2;
    }
  } else if (state == 2) {
    end.lose();
  } else if (state == 3) {
    end.win();
  }
}
void keyReleased() {
  if (state == 0) {
    Start.keyReleased();
  } else if (state == 1) {
    Play.keyReleased();
  } else if (state == 2) {
    if (key == ' ') {
      state = 0;
    }
  } else if (state == 3) {
    if (key == ' ') {
      state = 0;
    }
  }
}