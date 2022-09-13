class Drop {
  String Name;
  PVector Location;
  float Opasidy;
  Drop(String _Name) {
    textAlign(CENTER, CENTER);
    Name = _Name;
    Opasidy = 255;
    Location = new PVector(mouseX, mouseY);
  }
  void draw() {
    fill(0, Opasidy);
    text(Name, Location.x, Location.y);
    Location.y ++;
    Opasidy -= 1;
  }

}