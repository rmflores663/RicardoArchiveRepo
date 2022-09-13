//Brenton//

class Lvl2 extends Level
{
  Player player1, player2;
  ArrayList <Platform> platforms ;
  Collectible collectible1, collectible2, collectible3;
  boolean contact, contact2;
  PImage backgroundImg;
  boolean isCollected1, isCollected2, isCollected3;

  Lvl2(float x, float y)
  {
    super(x, y);
    platforms = new ArrayList();

    player1 = new Player(width/2, height/2, "Positive");
    player2 = new Player(width/2, height/2, "Negative");

    backgroundImg = loadImage("ARLevel1.png");

    platforms.add(new Platform(width/10+50, height/2+50, "Regular"));
    platforms.add(new Platform(width/4, height/4, "Positive"));
    platforms.add(new Platform(width/4+100, height*3/4, "Negative"));
    platforms.add(new Platform(width/2, height/4, "Regular"));
    platforms.add(new Platform(width/2, height*3/4, "Regular"));
    platforms.add(new Platform(width*3/4-100, height/4, "Positive"));
    platforms.add(new Platform(width*3/4-100, height*4/5, "Positive"));
    platforms.add(new Platform(width*9/10, height/5, "Regular"));
    platforms.add(new Platform(width*9/10, height*5/6, "Negative"));
    platforms.add(new Platform(width/3, height/2, "Positive"));

    collectible1= new Collectible(width*12/13, height/7, 2);
    collectible2 = new Collectible(width*12/13, height*7/9, 3);
  }


  void play()
  {
    backgroundImage();
    player1.draw();
    player2.draw();


    for (Platform currentPlatform : platforms)
    {
      currentPlatform.display();
    }

    Platform plat;
    plat = platforms.get(9);
    plat.moveH(400, 1200, 2);

    collectible1.display();
    collectible2.display();

    collectible1.check(player1.position, 100, 100); 
    collectible2.check(player1.position, 100, 100);
    collectible1.check(player2.position, 100, 100); 
    collectible2.check(player2.position, 100, 100);

    isCollected1 = collectible1.returnState();
    isCollected2 = collectible2.returnState();


    if (isCollected1 && isCollected2)
    {
      state = 4;
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
    for ( Platform loopedPlatform : platforms)
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

    player1.position.set(width/2, height/2);
    player2.position.set(width/2, height/2);

    Platform plat;
    plat = platforms.get(9);
    plat.resetPos();
    isCollected1 = false;
    isCollected2 = false;
  }
}
