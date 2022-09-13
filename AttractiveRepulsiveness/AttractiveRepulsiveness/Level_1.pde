class Lvl1 extends Level
{
  Player player1, player2;
  ArrayList <Platform>level1plat;
  ArrayList <Collectible>collectible;
  boolean contact, contact2;
  PImage backgroundImg;

  boolean isCollected1;

  Lvl1(float x, float y)
  {
    super(x, y);
    level1plat = new ArrayList();
    collectible = new ArrayList();
    player1 = new Player(width/10, height/2, "Positive");
    player2 = new Player(width/10, height/2, "Negative");

    backgroundImg = loadImage("ARLevel1.png");

    level1plat.add(new Platform (width/10, height/2, "Regular"));//First
    level1plat.add(new Platform (width/3-100, height/2, "Positive"));
    level1plat.add(new Platform (width/2-100, height/4, "Negative"));
    level1plat.add(new Platform (width/2-100, height*3/4, "Positive"));
    level1plat.add(new Platform (width*3/4-200, height/4, "Regular"));
    level1plat.add(new Platform (width*3/4-200, height*3/4, "Regular"));
    level1plat.add(new Platform (width*9/10-100, height/2, "Regular"));

    collectible.add(new Collectible(width*9/10, height/2 -100, 1));
  }

  void play()
  {
    backgroundImage();
    player1.draw();
    player2.draw();

    for ( Collectible currentCollectible : collectible)
    {
      currentCollectible.display();
      currentCollectible.check(player1.position, 100, 100); 
      currentCollectible.check(player2.position, 100, 100);

      isCollected1 = currentCollectible.returnState();
      if (isCollected1)
      {
        state = 3;
        
      }
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
    for ( Collectible currentCollectible : collectible)
    {
      currentCollectible.reset();
    }
    player1.position.set(width/10, height/2-50);
    player2.position.set(width/10, height/2-50);
    isCollected1 = false;
  }
}
