/*
Name:Ricardo
 Date:2/7/19
 Description:As evidence of your programming skills you will design, develop and test a Single Player Game 
 on our gaming table.  The game will have the following structure:
 
 Animated Introduction/Title screen
 Animated Win Screen
 Animated Lose Screen
 Animated Credits Screen
 One playable level as follows
 A Player is controlled and must start on the side nearest to their controller
 The player’s goal is to go to collect 3 items scattered across the screen
 Upon collecting the 3 items a final item appears on the opposite side of the screen
 The Player should be avoiding at least 4 moving obstacles/enemies
 Upon recovering the final item an animated win screen appears
 You may establish a lose condition (collides with enemy or loses health)
 The game should restart properly at all times
 Distinct background audio will accompany the different screens
 Images should be used for all graphics
 You will use audio effects for collecting or colliding
 A 30 second trailer should introduce your game
 Your first step is to develop a theme & title for your game.  What is the setting?  Who is the player?
 What are the collectables?  What is the final item to collect? What are the obstacles?
 */
import ddf.minim.*;
int state;
PImage playScreen, startB, Player1, loseScreen, winScreen;
float angle;
PlayScreen PS;
StartScreen SS;
Minim minim;

AudioPlayer StartSong;
AudioPlayer PlaySong;
AudioPlayer LoseSong;
AudioPlayer WinSong;
AudioPlayer Credits;

EndScreens end;

void setup() {

  size(1920, 1080, P2D);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);

  PS = new PlayScreen();
  SS = new StartScreen();
  end = new EndScreens();
  minim = new Minim(this);

  startB = loadImage("StartB.png");
  playScreen = loadImage("PlayScreen.png");
  Player1 = loadImage("MainPlayer.png");
  loseScreen = loadImage("LoseScreen.png");
  winScreen = loadImage("WinScreen.png");

  StartSong = minim.loadFile("StartScreenSong.wav");
  LoseSong = minim.loadFile("LoseSong.wav");
  PlaySong = minim.loadFile("PlaySong.wav");
  WinSong = minim.loadFile("WinSong.wav");
}
void draw() {
  //end.resetTimer();
  if (state == 0) {
    PS.reset();
    SS.draw();
    LoseSong.pause();
    WinSong.pause();
    if (!StartSong.isPlaying()) {
      StartSong.rewind();
    }
    StartSong.play();
  } else if (state == 1) {
    StartSong.pause();
    LoseSong.pause();
    if (!PlaySong.isPlaying()) {
      PlaySong.rewind();
    }
    PlaySong.play();
    PS.draw();
    PS.update();
  } else if (state == 2) {
    PlaySong.pause();
    PS.reset();
    //end.resetTimer();
    if (!LoseSong.isPlaying()) {
      LoseSong.rewind();
    }
    LoseSong.play();
    end.LoseScreen();
  } else if (state == 3) {
    PlaySong.pause();
    if (!WinSong.isPlaying()) {
      WinSong.rewind();
    }
    WinSong.play();
    //end.resetTimer();
    end.WinScreen();
  } else if (state == 4) {
    end.CreditsScreen();
  }
}
void keyPressed() {
  if (state == 0) {
    SS.keyPressed();
  } else if (state == 1) {
    PS.keyPressed();
  } else if (state == 2) {
    state = 0;
  } else if (state == 3) {
    state = 0;
  } else if (state == 4) {
    background(128);
  } else if (state == 5) {
    background(128);
  }
}
void keyReleased() {
  if (state == 0) {
  } else if (state == 1) {
    PS.keyReleased();
  } else if (state == 2) {
  } else if (state == 3) {
  } else if (state == 4) {
  }
}
