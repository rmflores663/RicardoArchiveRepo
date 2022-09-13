class CutScenes {
  CutScenes() {
  }
  void CollectGuns() {
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI/2);
    image(CutScene1, 0, 0, height, width);
    popMatrix();
    pushMatrix();
    translate(width*2/5,height/2);
    rotate(PI/2);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Collect All The Guns", 0, 0);
    popMatrix();
    pushMatrix();
    translate(width*3/5,height/2);
    rotate(-PI/2);
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(254, 255, 0);
    text("Collect All The Guns", 0, 0);
    popMatrix();
  }
  void CollectAmmo() {
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI/2);
    image(CutScene2, 0, 0, height, width);
    popMatrix();
    
    pushMatrix();
    translate(width*2/5,height/2);
    rotate(PI/2);
    textSize(50);
    textAlign(CENTER, CENTER);
    text("Collect All The Ammo", 0, 0);
    popMatrix();
    
    pushMatrix();
    translate(width*3/5,height/2);
    rotate(-PI/2);
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(254, 255, 0);
    text("Collect All The Ammo", 0, 0);
    popMatrix();
  }
  void keyPressed(){
    if(state == 1){
      state = 2;
    }
    if(state == 3){
     state = 4; 
    }
  }
}
