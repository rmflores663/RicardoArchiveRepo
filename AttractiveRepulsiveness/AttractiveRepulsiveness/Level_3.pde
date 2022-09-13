class Lvl3 extends Level
{

  Player player1, player2;
  ArrayList <Platform>level1plat;
  boolean contact, contact2;
  PImage backgroundImg;
  Collectible collectible1, collectible2, collectible3;
  boolean isCollected1, isCollected2, isCollected3;


  Lvl3(float x, float y)
  {
    super(x, y);
    level1plat = new ArrayList();
    player1 = new Player(width/2, height/2, "Positive");
    player2 = new Player(width/2, height/2, "Negative");
    collectible1 = new Collectible(width/2+50, height/5-50, 4);
    collectible2 = new Collectible(width/2+50, height*5/6-50, 5);
    collectible3 = new Collectible(width/10+50, height*5/6-50, 6);

    backgroundImg = loadImage("ARLevel1.png");

    level1plat.add(new Platform (width/10, height*5/6, "Regular"));//First
    level1plat.add(new Platform (width/4, height*4/5, "Negative"));
    level1plat.add(new Platform (width*2/5, height/2, "Positive"));
    level1plat.add(new Platform (width/4, height*2/5, "Positive"));
    level1plat.add(new Platform (width/5, height/5, "Positive"));
    level1plat.add(new Platform (width/2, height/2, "Regular"));
    level1plat.add(new Platform (width/2, height/5, "Regular"));
    level1plat.add(new Platform (width/2, height*5/6, "Regular"));
    level1plat.add(new Platform (width*3/5 , height/2, "Positive"));
    level1plat.add(new Platform (width*5/6, height*3/5, "Positive"));
    level1plat.add(new Platform (width*3/4 -100, height*4/5+50, "Positive"));//10
    level1plat.add(new Platform (width*9/10, height/2, "Positive"));
    level1plat.add(new Platform (width*9/10, height/5, "Positive"));
    level1plat.add(new Platform (width*3/4, height/5, "Negative"));
  }

  void play()
  {
    backgroundImage();
    player1.draw();
    player2.draw();

    collectible1.display();
    collectible2.display();
    collectible3.display();

    collectible1.check(player1.position, 100, 100); 
    collectible1.check(player2.position, 100, 100);
    collectible2.check(player1.position, 100, 100); 
    collectible2.check(player2.position, 100, 100);
    collectible3.check(player1.position, 100, 100); 
    collectible3.check(player2.position, 100, 100);

    isCollected1 = collectible1.returnState();
    isCollected2 = collectible2.returnState();
    isCollected3 = collectible3.returnState();
    
    Platform plat;
    plat = level1plat.get(10);
    plat.moveH(1200, 1600, 2);
    plat = level1plat.get(3);
    plat.moveH(200, 500, 2);

    if (isCollected1 && isCollected2 && isCollected3)
    {
      state = 5;
    }


    for (Platform currentPlatform : level1plat)
    {
      currentPlatform.display();
    }

    contact();
    lose();
  }

  void backgroundImage()
  {
    image(backgroundImg, 0, 0);
  }


  void contact()
  {
    for ( Platform loopedPlatform : level1plat)
    {
      if (player1.position.y + 100> loopedPlatform.position.y && player1.position.y < loopedPlatform.position.y + 25 
        && player1.position.x + 100 > loopedPlatform.position.x && player1.position.x < loopedPlatform.position.x + 100) 
      {
        contact = true;
      } else
      {
        contact = false;
      }
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      if (player2.position.y + 100> loopedPlatform.position.y && player2.position.y < loopedPlatform.position.y + 25 
        && player2.position.x + 100 > loopedPlatform.position.x && player2.position.x < loopedPlatform.position.x + 100) 
      {
        contact2 = true;
      } else
      {
        contact2 = false;
      }
      ////////////////////////////////////////////////////////////////////////////////////////////////////////
      if (contact == true)
      {
        player1.position.y = loopedPlatform.position.y-100;
        player1.speedY = 0;
        player1.jumping = false;
        //player2.jumping = false;
      }
      //////////////////////////////////////////////////////////////////////////////////////////////////
      if ( contact2)
      {
        player2.position.y = loopedPlatform.position.y-100;
        player2.speedY = 0;
        player2.jumping = false;
      }
      /////////////////////////////////////////////////////////////////////////////////////////////////////////
      if ((contact && loopedPlatform.polarity == "Positive" && player1.polarity == "Positive" ))
      {
        player1.repel();

        println(contact);
      }

      if ((contact2 && loopedPlatform.polarity == "Negative" && player2.polarity == "Negative" ))
      {
        player2.repel();
        println(contact);
      }
    }
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  void keyPressed()
  {
    player1.movement(key);
    player2.movement2(key);
  }

  void keyReleased()
  {
    player1.noMovement(key);
    player2.noMovement2(key);
  }

  void lose()
  {
    if (player1.position.y >= height - 100 || player2.position.y >= height-100)
    {
      state = 6;
    }
  }
  
  void reset()
  {
    collectible1.reset();
    collectible2.reset();
    collectible3.reset();

    player1.position.set(width/2, height/2);
    player2.position.set(width/2, height/2);
    
    Platform plat;
    plat = level1plat.get(10);
    plat.resetPos();
    plat = level1plat.get(3);
    plat.resetPos();

    
    isCollected1 = false;
    isCollected2 = false;
    isCollected3 = false;
  }
}
