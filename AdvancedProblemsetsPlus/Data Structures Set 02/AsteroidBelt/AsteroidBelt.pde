/*
Name: RicardoF
 Date: 5/9/19
 Description: Using your Asteroid class from APS01 you will create an asteroid field.
 Using an ArrayList create an sketch that has stars as background and has 100 Asteroids
 floating around.  You CANNOT use the random function so think about a strategy to vary
 the position, velocity and sizes of the Asteroids.
 */
ArrayList<Asteroid> asteroids;
PImage Asteroid;
int[] Xspeeds = {-15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
IntList XspeedsCollection;
Asteroid aster;
void setup() {
  XspeedsCollection = new IntList();
  asteroids = new ArrayList<Asteroid>();    
  Asteroid = loadImage("Asteroid.png");
  imageMode(CENTER);
  size(800, 600);  
  for (int i = 0; i < Xspeeds.length; i++) {
    XspeedsCollection.append(Xspeeds[i]);
  }
  for (int i = 0; i < 99; i++) {
    XspeedsCollection.shuffle();
    asteroids.add(new Asteroid(map(i, 0, 99, 50, width-50), map(i, 0, 99, 50, height-50), XspeedsCollection.get(0), XspeedsCollection.get(1), map(i, 0, 99, 50, 80)));
  }
}
void draw() {
  background(10, 0, 100);
  for (int i = 0; i < asteroids.size(); i++) {
    aster = asteroids.get(i);
    aster.draw();
    aster.move();
  }
}