/*
 Name: Ricardo
 Date: 12/17/18
 Description:
 
 Create a BeachBall class that has the following methods:
 draw() :: draws the beachball using an image
 move() :: moves the beachball around the screen. It should spin as it moves
 mouseClicked() :: checks to see if the ball was clicked on. If it was it stops. 
 It it was stopped then it moves again.
 keyPressed() :: when the + key is pressed the beachball grows and when the – 
 key is pressed it shrinks.  The ball is never smaller than 5o nor larger than 
 half of the window’s width.
 
 Using the BeachBall class create a program where there are 2 beachballs rolling 
 on a beach. The background should be an image of sand.
 */
beachBall BB1, BB2;
PImage backGround;
void setup() {
  imageMode(CENTER);
  size(800, 600);
  backGround = loadImage("Untitled-1.png");
  BB1 = new beachBall(width/2, height/2, 100);
  BB2 = new beachBall(630, 400, 150);
}
void draw() {
  image(backGround, width/2, height/2, width, height);
  BB1.draw();
  BB1.move();
  BB2.draw();
  BB2.move();
}
void mouseClicked() {
  BB1.mouseClicked();
  BB2.mouseClicked();
}
void keyPressed() {
  BB1.keyPressed();
}