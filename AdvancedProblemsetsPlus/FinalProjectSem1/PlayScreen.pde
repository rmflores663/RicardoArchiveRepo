class PlayScreen {
  Player P1;
  Objects OS;
  boolean RCollect, GCollect, BCollect;
  PVector Rlocation, Glocation, Blocation, LLocation11, LLocation21, LLocation12, LLocation22, LSpeed, Portal, Chaser1, Chaser2;
  PlayScreen() {
    P1 = new Player(100, height/2);
    OS = new Objects();
    RCollect = GCollect = BCollect = false;
    Rlocation = new PVector(300, 100);
    Glocation = new PVector(width/2, height*3/4);
    Blocation = new PVector(width*4/5, height-100);
    LLocation11 = new PVector(width/2+120, 100);
    LLocation21 = new PVector(width-50, 100);
    LLocation12 = new PVector(50, 700);
    LLocation22 = new PVector(width/2-120, 700);
    LSpeed = new PVector(3, 3);
    Portal = new PVector(100, 300);
    Chaser1 = new PVector(width/2, height/2);
    Chaser2 = new PVector(width*3/4, height*2/3);
  }
  void reset() {
    if (Chaser1.x != width/2) {
      RCollect = GCollect = BCollect = false;
      Chaser1.x =  width/2;
      Chaser1.y = height/2;
      Chaser2.x = width*3/4;
      Chaser2.y = height*3/4;
      LLocation11.x = width/2+120;
      LLocation11.y = 100;

      LLocation21.x = width-50;
      LLocation21.y = 100;

      LLocation12.x = 50;
      LLocation12.y = 700;

      LLocation22.x = width/2-120;
      LLocation22.y = 700;
      
      P1.reset();
      P1.speed.x = P1.speed.y = 0;
    }
    //LLocation11 = new PVector(width/2+120, 100);
    //LLocation21 = new PVector(width-50, 100);
    //LLocation12 = new PVector(50, 700);
    //LLocation22 = new PVector(width/2-120, 700);
  }
  void draw() {
    image(playScreen, width/2, height/2, width, height);

    //OS.Lazer(LLocation11.x, LLocation11.y, LLocation21.x, LLocation21.y, 90);
    if(P1.location.x > width/4+width/8-100 && P1.location.x < width/4-width/8+100
    && P1.location.y > LLocation11.y-75 && P1.location.y < LLocation11.y+75){
      lose();
    }
    
    //OS.Lazer(LLocation12.x, LLocation12.y, LLocation22.x, LLocation22.y, 90);
    if(P1.location.x > width*3/4+width/8-100 && P1.location.x < width*3/4-width/8+100
    && P1.location.y > LLocation12.y-75 && P1.location.y < LLocation12.y+75){
      lose();
    }

    OS.RedGem(Rlocation.x, Rlocation.y, RCollect);
    OS.GreenGem(Glocation.x, Glocation.y, GCollect);
    OS.BlueGem(Blocation.x, Blocation.y, BCollect);
    
    OS.Chaser(Chaser1.x, Chaser1.y);
      if (P1.location.x < Chaser1.x+100 && P1.location.x > Chaser1.x-100
        && P1.location.y > Chaser1.y-100 && P1.location.y < Chaser1.y+100) {
        lose();
      }
    
    OS.Chaser(Chaser2.x, Chaser2.y);
      if (P1.location.x < Chaser2.x+100 && P1.location.x > Chaser2.x-100
        && P1.location.y > Chaser2.y-100 && P1.location.y < Chaser2.y+100) {
        lose();
      }


    LLocation11.y -= LSpeed.x;
    LLocation21.y -= LSpeed.x;


    LLocation12.y += LSpeed.y;
    LLocation22.y += LSpeed.y;





    if (RCollect && GCollect && BCollect) {
      OS.Portal(Portal.x, Portal.y, false);
      if (P1.location.x < Portal.x+75 && P1.location.x > Portal.x-75
        && P1.location.y > Portal.y-75 && P1.location.y < Portal.y+75) {
        win();
      }
    }






    P1.draw();
  }
  void update() {
    if ((P1.location.x > Rlocation.x-100 && P1.location.x < Rlocation.x+100) && 
      (P1.location.y < Rlocation.y+100 && P1.location.y > Rlocation.y-100)) {
      RCollect = true;
    }
    if ((P1.location.x > Glocation.x-100 && P1.location.x < Glocation.x+100) && 
      (P1.location.y < Glocation.y+100 && P1.location.y > Glocation.y-100)) {
      GCollect = true;
    }
    if ((P1.location.x > Blocation.x-100 && P1.location.x < Blocation.x+100) && 
      (P1.location.y < Blocation.y+100 && P1.location.y > Blocation.y-100)) {
      BCollect = true;
    }
    if (LLocation11.y > height-30 || LLocation11.y < 30) {
      LSpeed.x *= -1;
    }
    if (LLocation12.y > height-30 || LLocation12.y < 30) {
      LSpeed.y*= -1;
    }
    if (P1.location.x > Chaser1.x) {
      Chaser1.x ++;
    } else {
      Chaser1.x--;
    }
    if (P1.location.y > Chaser1.y) {
      Chaser1.y  ++;
    } else {
      Chaser1.y --;
    }


    if (P1.location.x > Chaser2.x) {
      Chaser2.x += 2;
    } else {
      Chaser2.x-= 2;
    }
    if (P1.location.y > Chaser2.y) {
      Chaser2.y  += 2;
    } else {
      Chaser2.y -= 2;
    }
  }
  void lose() {
    state = 2;
  }
  void win() {
    state = 3;
  }
  void keyPressed() {
    P1.keyPressed();
  }
  void keyReleased() {
    P1.keyReleased();
  }
}
