/*
 Name: Ricardo
 Date: 5/20/19
 Description:  Create an class named Drop.  The class has the following functionality:  
 It will draw text on the screen which fades away.  Upon creating this class you will 
 be using it do “drops” onto the screen.  Whenever the mouse is pressed you should 
 create an instance(at the mouse) that displays your name on the screen and fades away. 
 Manage these using an ArrayList.
 */
ArrayList<Drop> Drops; 
void setup() {
  size(800, 600);
  Drops = new ArrayList<Drop>();
}
void draw() {
  background(128);
  for (int i = 0; i < Drops.size(); i++) {
    Drop D1 = Drops.get(i); 
    D1.draw();
  }
}
void mousePressed() {
  Drops.add(new Drop("Ricardo"));
}