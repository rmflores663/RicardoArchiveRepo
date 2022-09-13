class Frog {
  PVector location;
  Frog(float x, float y) {
    location = new PVector(x, y);
  }
  void draw() {
    println(location.x, location.y);
    fill(0, 255, 0);
    rect(location.x, location.y, 50, 50);
  }
  void keyReleased() {
    if (location.x >= 25 && location.x <= width-25 && location.y >= 25 && location.y <= height-25) {
      if (key == CODED) {
        if (keyCode == DOWN) {
          location.y += 50;
        } else if (keyCode == UP) {
          location.y -= 50;
        }
        if (keyCode == LEFT) {
          location.x -= 50;
        } else if (keyCode == RIGHT) {
          location.x += 50;
        }
      }
      if(location.x > width){
       location.x = width-25; 
      }
      if(location.x < 0){
       location.x = 25; 
      }
      if(location.y > height){
       location.y = height-25; 
      }
      if(location.y < 0){
       location.y = 25; 
      }
    }
  }
}