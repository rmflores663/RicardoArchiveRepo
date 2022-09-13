/*
Name: Ricardo
 Date: 1/22/19
 Description: A sampling interface will be displayed. There should be three circular images on the screen. 
 Clicking on any of the images will trigger a different audio sample. A message will also be displayed to
 the user informing them of three keys that will change a background track. There can only be a single 
 background track playing at any given time. Samples should be less than 2 seconds in duration. The user 
 can play a background track and layer the samples over it by clicking on the images.
 */
//you can play more than one sample at the same time

import ddf.minim.*;

song1 s1;
song2 s2;
song3 s3;
Minim minim;
AudioPlayer Background1, Background2, Background3;
PImage song1, song2, song3;

void setup() {
  size(800, 600);
  s1 = new song1();
  s2 = new song2();
  s3 = new song3();
  minim = new  Minim(this);
  song1 = loadImage("Song1.png");
  song2 = loadImage("Song2.png");
  song3 = loadImage("Song3.png");
  Background1 = minim.loadFile("Song1.wav");
  Background2 = minim.loadFile("Song2.wav");
  Background3 = minim.loadFile("Song3.wav");
  imageMode(CENTER);
}

void draw() {
  background(128);
  s1.draw();
  s2.draw();
  s3.draw();
  s1.keyPressed();
  s2.keyPressed();
  s3.keyPressed();
}
void mousePressed() {
  s1.mousePressed();
  s2.mousePressed();
  s3.mousePressed();
}