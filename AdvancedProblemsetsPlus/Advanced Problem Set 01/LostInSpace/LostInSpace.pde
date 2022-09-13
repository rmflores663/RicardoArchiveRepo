/*
 Name: Ricardo
 Date: 12/5/18
 Description: Create the following class and use it as described below.
 
 Asteroid
 location: PVector
 Speed: PVector
 Size: int
 Health: int
 
 Asteroid (x, y, vx, vy, size)
 draw(): void
 move(): void
 mousePressed()
 
 You will use this class to create 2 asteroids that are tumbling in space.  They should be different 
 colors and sizes.  When you click on the asteroid it loses 5 points of health.  When it has no 
 health it stops.   The asteroids should bounce off the edges of the screen and when they bounce 
 they should also rotate in an opposite manner.
 
 
 */
Asteroid a1, a2;
PImage Asteroid;
void setup() {
  size(800, 600);
  imageMode(CENTER);
  a1 = new Asteroid(width/2, height/2, 2, 2, 200);
  a2 = new Asteroid(width/3, height/3, 5, 5, 400);
  Asteroid = loadImage("Asteroid.png");
}
void draw() {
  background(0);
  a1.draw();
  a1.move();

  a2.draw();
  a2.move();
}
void mousePressed() {
  a1.mouseClicked();
  a2.mouseClicked();
}