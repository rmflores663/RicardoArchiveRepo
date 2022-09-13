/*
Name: Ricardo
 Date: 1/10/19
 Description:
 Create two classes that represent two different pokemon characters.
 draw() :: draws the pokemon using an image
 grow():: causes the pokemons to grow but they are never larger than 200x200px.
 keyPressed() :: when the w,a,s,d keys are pressed the first pokemon moves accordingly.  
 When the Arrow keys are pressed the second pokemon moves accordingly.  The Pokemons stay 
 on the screen at all times.
 mousePressed():: when the pokemon is click on it will turn red in anger, if it is NOT 
 clicked on then it is not RED it is “regular”.
 
 The background of the sketch should be constructed with diagonal grid (NOT an image) as below.
 */
Ditto D1;
greninja G1;
void setup() {
  size(800, 600);
  imageMode(CENTER);
  D1 = new Ditto(width/2, height/2);
  G1 = new greninja(width/3, height/3);
}
void draw() {
  background(128);
  for (int x = 0; x <= width*1.75; x += 50) {
    line(x, 0, 0, x);
  }
  for (int x = 0; x <=width*2; x += 50) {
    line(x-width*.75, 0, x, height);
  }
  D1.draw();
  G1.draw();
  D1.grow();
  G1.grow();
  D1.keyPressed();
  G1.keyPressed();
}
void mousePressed() {
  D1.mousePressed();
  G1.mousePressed();
}