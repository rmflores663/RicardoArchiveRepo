class Activate {
  Activate() {
  }
  void draw() {
   TimerX = 650;
   TimerY = 0;
   TimerW = 718;
   TimerH = 50;
    Double_points = false;
    PowerUp = false;
    Double_points2 = false;
    imageMode(CORNER);
    textSize(20);
    BOSS = false;
    BlueX= 120;
    BlueY= 600;
    Redx= 500;
    Redy= 600;
    BossX = BossY = 396;
    Score = 0;
    fill(0);
    image(Startscreen, 0, 0, width, height);
    image(StartRock, rockx, rocky);
    rocky += rockplus;
    Mouse = false;
    if(rocky < 300 &&(Rockup)){
     Rockup = false;
     Rockdown = true;
    }
    if(rocky > 600 &&(Rockdown)){
     Rockup = true;
     Rockdown = false;
    }
    if(Rockup){
     rockplus = -2;
    }
    if(Rockdown){
     rockplus = 2; 
    }
    if (mousePressed == true &&(mouseX>1250 &&(mouseX < 1700 &&(mouseY > 80 &&(mouseY > 100))))) {
    rockx = 1125;
    rocky = 410;
      state = 1;
    }
  }
}
