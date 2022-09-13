/*
Name: Ricardo
 Date: 1/16/19
 Description:A player is controlled via the left right arrows and PVectors.   
 The screen should be divided into 2 halves with distinct colors. The areas 
 should be visible to the player and when they are in the area the color 
 should brighten.  Upon entering one of the areas a background track plays 
 and loops.  When the player moves into a different area the audio track 
 should change to a different song.  There should only be one track playing 
 at any given time.
 
 +---+---+
 | A | B | 
 +---+---+
 */
//use player and sample

import ddf.minim.*;

int BH1, BH2;

person p1;
Minim minim;
AudioPlayer Msong; 
AudioPlayer Msong2;

void setup() {
  size(800, 600); 
  noStroke();
  BH1 = BH2 = 120;
  p1 = new person();
  minim = new Minim(this);
  Msong = minim.loadFile("MySong.wav");
  Msong2 = minim.loadFile("MySong2.wav");
}
void draw() {
  background(0);
  fill(255, 0, 0, BH1);
  rect(0, 0, width/2, height);
  fill(30, 0, 240, BH2);
  rect(width/2, 0, width/2, height);
  p1.draw();
  p1.Background();
}
void keyPressed() {
  p1.keyPressed();
}