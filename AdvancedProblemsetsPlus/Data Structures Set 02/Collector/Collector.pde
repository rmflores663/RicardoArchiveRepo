/*
 Name: Ricardo
 Date: 5/28/19
 Description: Create a Coin class that displays a golden circle at a given location on 
 the screen with a point value in its center.   When you click on the coin it disappears 
 and plays a collection sound.  You will have two groups of coins.  Each group has 20 coins
 in it.  In one group the coins do NOT move and are of lower point values.  The second group
 of coins moves and has higher values.  When you have collected all the coins the screen 
 goes green.
 */
import ddf.minim.*;
Minim minim;
coin Cs;
ArrayList<coin> Coins;
int score;
void setup() {
  size(800, 600);
  minim = new  Minim(this);
  Coins = new ArrayList<coin>();
  for (int i = 0; i < 19; i++) {
    Coins.add(new coin(map(i, 0, 19, 50, width-50), map(i, 0, 19, 50, height-50), 10, 10));
  }
  for (int i = 0; i < 19; i++) {
    Coins.add(new coin(map(i, 0, 19, 750, 50), map(i, 0, 19, 550, 50), 0, 0));
  }
}
void draw() {
  background(128);
  for (int i = 0; i < Coins.size(); i++) {
    Cs = Coins.get(i);
    Cs.draw();
  }
  fill(0);
  text("Score:"+score, 20, 20);
}
void mousePressed() {
  for (int i = 0; i < Coins.size(); i++) {
    Cs = Coins.get(i);
    score += Cs.collect();
    Cs.mousePressed();
  }
}