/*
Name: Ricardo
 Date: 1/7/19
 Description: Three identical objects (rocks, flowers, tumbleweeds, etc) are in a contextually appropriate 
 background. The objects never move but the illusion of movement is created by moving the background. The
 ‘a’ key creates the illusion that the objects move left while the ‘d’ key creates the illusion of movement
 to the right. With every “step” the objects should appear to roll or tumble. See the example below.hint: 
 The background image should be wider than the screen. Bonus: Objects are aligned diagonally + you can 
 infinitely move without visual glitches.
 */
PImage backGround;
int x;
Baseball BB1, BB2, BB3;
void setup() {
  size(800, 600);
  imageMode(CENTER);
  BB1 = new Baseball(width/3, height*3/4);
  BB2 = new Baseball(width/2, height*3/5);
  BB3 = new Baseball(width*2/3, height/2);
  backGround = loadImage("BackGround.png");
  x = 2;
}
void draw() {
  background(255, 0, 0);
  BackGround();
  BB1.draw();
  BB2.draw();
  BB3.draw();
  if (keyPressed) {
    BB1.keyPressed();
    BB2.keyPressed();
    BB3.keyPressed();
  }
}
void BackGround() {

  image(backGround, x, height/2);
  if (keyPressed && key == 'a') {
    x+= 2;
  } else if (keyPressed && key == 'd') {
    x-= 2;
  }
  if (x > 802) {
    image(backGround, x-1600, height/2);
  }else if (x < 0) {
    image(backGround, x+1596, height/2);
  }
  if (x > 1602) {
    x = 2;
  }
  if(x < -1600){
    x = 2;
  }
  println(x);
}
//-800 is when first image is off screen
//1600 is the location where the next screen should come in
// 0 is when the image's right corner is on the screen
//800 is when the image's left corner is on the screen