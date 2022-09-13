class Score {
  Score() { 
    Rectx = Recty = 100;
    boxstate = 1;
  }
  void draw() {
    textSize (60);
    text("Score " +Score, 50, 50);
    fill(255, 255, 0);
    if (Points == 1) {
      image(Box, Rectx, Recty, Rectw, Recth);
    } else if (Points == 2) {
      image(Plus2, Rectx, Recty, Rectw, Recth);
    }

    //score counter

    if  (playerX+50 > Rectx-25 &&(playerX-50 < Rectx+ 25 &&(playerY+50 > Recty-25 && (playerY-50 < Recty+25 &&(boxstate < 9))))) {
      Score = Score + Points;
      boxstate += 1;
    } 
    if  (playerX+50 > Rectx-25 &&(playerX-50 < Rectx+ 25 &&(playerY+50 > Recty-25 && (playerY-50 < Recty+25 &&(boxstate == 9))))) {
      boxstate = 1;
      Score = Score + Points;
    }

    //boxPattern

    if (boxstate == 1) {
      Rectx = 324;
      Recty = 587;
    }
    if (boxstate == 2) {
      Rectx = 987;
      Recty = 130;
    }
    if (boxstate == 3) {
      Rectx = 495;
      Recty = 324;
    }
    if (boxstate == 4) {
      Rectx = 1132;
      Recty = 678;
    }
    if (boxstate == 5) {
      Rectx = 1581;
      Recty = 251;
    }
    if (boxstate == 6) {
      Rectx = 1050;
      Recty = 845;
    }
    if (boxstate == 7) {
      Rectx = 1150;
      Recty = 345;
    }
    if (boxstate == 8) {
      Rectx = 50;
      Recty = 100;
    }
    if (boxstate == 9) {
      Rectx = 1145;
      Recty = 123;
    }

    //activate powerup

    if (g > l+30000 && (g < l+44000)) {
      PowerUp = true;
    } else {
      PowerUp = false;
    }

    if (PowerUp) {
      image(TwoX, Px, Py, 50, 50);
      fill(255, 255, 0);
      if (playerX+50 > Px-25 &&(playerX-50 < Px+ 25 &&(playerY+50 > Py-25 && (playerY-50 < Py+25)))) {
        Double_points = true;
      }
      if(Double_points){
        Double_points2 = true;
      }
      if(g > l+38663){
        Double_points2 = false;
      }
      if(Double_points2){
       Points = 2; 
      } else {
       Points = 1; 
      }
    }
  }
}