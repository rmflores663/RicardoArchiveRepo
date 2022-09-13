/*
Name: Ricardo
 date: 5/6/19
 description: This exercises calls back to Faller but moves at scale. Use an 800x600pixel screen.
 Using the datasets below create a sketch that does the following:
 Creates circles across the screen (one for each value in the data set)
 Use the datasets to initialize the elements(ylocations, yspeeds)
 The circles should move based on the provided data
 Pressing the space bar stops/restarts the movement.
 The circles should bounce between the edges of the screen
 The circles should be evenly spaced across the screen
 */
int[] yspeeds = {0, 2, -3, -3, -2, 0, -3, -1, -3, 0, 0, 0, 2, 2, -1, 0, -1, 1, 2, -2, 1, 
  0, -1, 1, 3, 2, -1, -2, 0, 3, -2, -2};
int[] ylocations = {522, 102, 42, 573, 164, 388, 16, 117, 299, 586, 71, 402, 137, 543, 234, 
  414, 376, 515, 308, 126, 139, 436, 227, 98, 224, 552, 494, 235, 596, 372, 527, 46};
boolean move;
void setup() {
  size(800, 600);
  move = true;
}
void draw() {
  background(0);
  for (int i = 0; i < ylocations.length; i++) {
    ellipse(i*25, ylocations[i], 10, 10);
  }

  for (int i = 0; i < ylocations.length; i++) {
    if (move) {
      ylocations[i] += yspeeds[i];
    }
  }
  for (int i = 0; i < ylocations.length; i++) {
    if (ylocations[i] > height || ylocations[i] < 0) {
      yspeeds[i]*= -1;
    }
  }
}
void keyPressed() {
  if (key == ' ') {
    move = !move;
  }
}