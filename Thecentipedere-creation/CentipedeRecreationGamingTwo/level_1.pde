class levelone { 
  ArrayList<centipede> Centipedes;
  ArrayList<bullet> playerOneLazer;
  ArrayList<bullet> playerTwoLazer;
  int death=0;
  player player1;
  player player2;
  levelone() {    
    Centipedes = new ArrayList<centipede>();
    playerOneLazer = new ArrayList<bullet>();
    playerTwoLazer = new ArrayList<bullet>();
    for (int i = 0; i < 10; i++) {
      Centipedes.add(new centipede(width/2+50, i*50+50, 1, false));
      Centipedes.add(new centipede(width/2-50, i*50+50, 1, false));
    }
    player1 =new player(100, 100, 1, false);
    player2 = new player(width-100, 100, 2, false);
  }
  void draw() {




    background(0);
    player1.draw();
    player2.draw();
    mushrooms();
    for (centipede centipedeDraw : Centipedes) {
      centipedeDraw.draw();
      centipedeDraw.update();
      if (death>20)
      {

        state=2;
      }
      for (int i = 0; i < playerOneLazer.size(); i++) {
        bullet lazer = playerOneLazer.get(i);
        if (!centipedeDraw.isDead && centipedeDraw.Die(lazer.location.x, lazer.location.y)) {
          playerOneLazer.remove(0);
          death+=1;
        }
      }

      for (int i = 0; i < playerTwoLazer.size(); i++) {
        bullet lazer = playerTwoLazer.get(i);
        if ( !centipedeDraw.isDead && centipedeDraw.Die(lazer.location.x, lazer.location.y)) {
          playerTwoLazer.remove(0);
          death+=1;
        }
      }
      for (int i = 0; i < Centipedes.size(); i ++) {
        centipede cent = Centipedes.get(i);
        if (cent.isDead) {
          centipedeDraw.bounce(cent.location.x, cent.location.y);
        }
      }
      if (!centipedeDraw.isDead) {
        player1.death(centipedeDraw.location.x, centipedeDraw.location.y);
        player2.death(centipedeDraw.location.x, centipedeDraw.location.y);
      }
      text(player1.lives, 50, 50);
      text(player2.lives, width-50, 50);
      centipedeDraw.bounce(400, 300);
      centipedeDraw.bounce(400, 380);
      centipedeDraw.bounce(200, 600);
      centipedeDraw.bounce(600, 580);
      centipedeDraw.bounce(700, 200);
      centipedeDraw.bounce(300, 450);
      centipedeDraw.bounce(800, 600);
      centipedeDraw.bounce(1000, 580);
      centipedeDraw.bounce(900, 355);
      centipedeDraw.bounce(1100, 480);
      centipedeDraw.bounce(700, 850);
      centipedeDraw.bounce(800, 580);
      centipedeDraw.bounce(953, 500);
      centipedeDraw.bounce(530, 450);
      centipedeDraw.bounce(1000, 400);   
      centipedeDraw.bounce(1210, 300);  
      centipedeDraw.bounce(1300, 500);
      centipedeDraw.bounce(1200, 380);
      centipedeDraw.bounce(1100, 600);
      centipedeDraw.bounce(1340, 580);
      centipedeDraw.bounce(1154, 200);
      centipedeDraw.bounce(1165, 450);
      centipedeDraw.bounce(1263, 600);
      centipedeDraw.bounce(1389, 580);
      centipedeDraw.bounce(1432, 355);
      centipedeDraw.bounce(1109, 480);
      centipedeDraw.bounce(1403, 850);
      centipedeDraw.bounce(739, 439);
      centipedeDraw.bounce(653, 730);
      centipedeDraw.bounce(934, 620);
      centipedeDraw.bounce(530, 200);
      centipedeDraw.bounce(490, 130);
      centipedeDraw.bounce(530, height-20);
      centipedeDraw.bounce(490, height-60);
      centipedeDraw.bounce(1330, height-20);
      centipedeDraw.bounce(1290, height-60);
      centipedeDraw.bounce(330, height-30);
      centipedeDraw.bounce(290, height-55);
      centipedeDraw.bounce(1130, height-30);
      centipedeDraw.bounce(1390, height-55);
      centipedeDraw.bounce(330, height-200);
      centipedeDraw.bounce(290, height-100);
      centipedeDraw.bounce(330, height-400);
      centipedeDraw.bounce(290, height-300);
      centipedeDraw.bounce(430, height-400);
      centipedeDraw.bounce(390, height-300);
      centipedeDraw.bounce(530, height-400);
      centipedeDraw.bounce(490, height-300);
      centipedeDraw.bounce(1330, height-300);
      centipedeDraw.bounce(1290, height-200);
      centipedeDraw.bounce(980, height-320);
      centipedeDraw.bounce(1190, height-280);
    }
    for (bullet lazer : playerOneLazer) {
      lazer.draw();
    }
    for (bullet lazer : playerTwoLazer) {
      lazer.draw();
    }
    removeLazer();
  }
  void removeLazer() {
    for (int i = 0; i < playerOneLazer.size(); i ++) {
      bullet lazer = playerOneLazer.get(i);
      if (lazer.location.x >= width/2) {
        playerOneLazer.remove(0);
      }
    }
    for (int i = 0; i < playerTwoLazer.size(); i ++) {
      bullet lazer = playerTwoLazer.get(i);
      if (lazer.location.x <= width/2) {
        playerTwoLazer.remove(0);
      }
    }
  }
  void reset()
  {
    for (int i = 0; i < 20; i+=2) {
      centipede cent = Centipedes.get(i); 
      cent.location.x = width/2+50;
      cent.location.y = i*25+50;
    }
    for (int i=1; i < 20; i+=2) {
      centipede cent = Centipedes.get(i);
      cent.location.x = width/2-50;
      cent.location.y = i*25+50;
    }
  }
  void keyPressed() {
    if (key== 'k')
    { 
      state=2;
    }
    player1.keyPressed();
    player2.keyPressed();
  }

  void  keyReleased() {
    player1.keyReleased();
    player2.keyReleased();
    if (key == ' ' && playerOneLazer.size() < 1) {
      playerOneLazer.add(new bullet(player1.location.x, player1.location.y, 1));
    }
    if (key == 'f' && playerTwoLazer.size() < 1) {
      playerTwoLazer.add(new bullet(player2.location.x, player2.location.y, 2));
    }
  }

  void mushrooms() {
    image(mushroom, 400, 300, 20, 20);
    image(mushroom, 400, 380, 20, 20);
    image(mushroom, 200, 600, 20, 20);
    image(mushroom, 600, 580, 20, 20);
    image(mushroom, 700, 200, 20, 20);
    image(mushroom, 300, 450, 20, 20);
    image(mushroom, 800, 600, 20, 20);
    image(mushroom1, 1000, 580, 20, 20);
    image(mushroom1, 900, 355, 20, 20);
    image(mushroom1, 1100, 480, 20, 20);
    image(mushroom, 700, 850, 20, 20);
    image(mushroom, 800, 580, 20, 20);
    image(mushroom1, 953, 500, 20, 20);
    image(mushroom, 530, 450, 20, 20);
    image(mushroom1, 1000, 400, 20, 20);   
    image(mushroom1, 1210, 300, 20, 20);  
    image(mushroom1, 1300, 500, 20, 20);
    image(mushroom1, 1200, 380, 20, 20);
    image(mushroom1, 1100, 600, 20, 20);
    image(mushroom1, 1340, 580, 20, 20);
    image(mushroom1, 1154, 200, 20, 20);
    image(mushroom1, 1165, 450, 20, 20);
    image(mushroom1, 1263, 600, 20, 20);
    image(mushroom1, 1389, 580, 20, 20);
    image(mushroom1, 1432, 355, 20, 20);
    image(mushroom1, 1109, 480, 20, 20);
    image(mushroom1, 1403, 850, 20, 20);
    image(mushroom, 739, 439, 20, 20);
    image(mushroom, 653, 730, 20, 20);
    image(mushroom1, 934, 620, 20, 20);
    image(mushroom, 530, 200, 20, 20);
    image(mushroom, 490, 130, 20, 20);
    image(mushroom, 530, height-20, 20, 20);
    image(mushroom, 490, height-60, 20, 20);
    image(mushroom1, 1330, height-20, 20, 20);
    image(mushroom1, 1290, height-60, 20, 20);
    image(mushroom, 330, height-30, 20, 20);
    image(mushroom, 290, height-55, 20, 20);
    image(mushroom1, 1130, height-30, 20, 20);
    image(mushroom1, 1390, height-55, 20, 20);
    image(mushroom, 330, height-200, 20, 20);
    image(mushroom, 290, height-100, 20, 20);
    image(mushroom, 330, height-400, 20, 20);
    image(mushroom, 290, height-300, 20, 20);
    image(mushroom, 430, height-400, 20, 20);
    image(mushroom, 390, height-300, 20, 20);
    image(mushroom, 530, height-400, 20, 20);
    image(mushroom, 490, height-300, 20, 20);
    image(mushroom1, 1330, height-300, 20, 20);
    image(mushroom1, 1290, height-200, 20, 20);
    image(mushroom1, 980, height-320, 20, 20);
    image(mushroom1, 1190, height-280, 20, 20);
  }
}