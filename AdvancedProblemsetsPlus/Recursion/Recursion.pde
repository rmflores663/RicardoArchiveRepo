void setup() {
  size(500, 500);
  noStroke();
  noLoop();
}

void draw() {
  drawCircle(width/2, height/2, 250, 8);
}

void drawCircle(int x,int y ,int radius, int level) {                    
  float tt = 126 * level/4.0;
  fill(tt, 100);
  ellipse(x, height/2, radius*2, radius*2); 
  ellipse(width/2, y, radius*2, radius*2);
  if(level > 1) {
    level = level - 1;
    drawCircle(x - radius/2, y+radius/2, radius/2, level);
    drawCircle(x + radius/2, y-radius/2, radius/2, level);
  }
}
