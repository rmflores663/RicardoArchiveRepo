class Win {
  Win() {
  } 
  void draw() {
    Double_points = false;
    if (g > l+38663 &&(state == 2)) {
      state = 4;
    }
    if (state == 4) {
      q = a = u = k = O = U = 0;
      textSize(35);
    image(win, width/2, height/2, width, height);
      BOSS = false;
      text("Final Score "+Score, width/3+90, height/3+8);
      fill(0);
      if (mousePressed == true) {
        Mose = false;
      }else{
       Mose = true; 
      }
      if(Mose){
       Mouse = true;
      }
      if(mousePressed &&(Mouse)){
       state = 0; 
      }
      if(g > l+50000 &&(state == 4)){
       state = 0; 
      }
    }
  }
}