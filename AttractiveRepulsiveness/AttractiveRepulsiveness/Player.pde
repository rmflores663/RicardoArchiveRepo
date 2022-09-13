class Player
{
  PVector position, velocity;
  int speedY;
  String polarity;
  boolean jumping;
  PImage player;

  boolean isReady;

  Player(int x, int y, String p)
  {
    position = new PVector(x, y);
    polarity = p;
    velocity = new PVector(0, 0);
    jumping = false;
    speedY = 0;

    if (polarity == "Positive") {
      player = loadImage("PositiveCharacter.png");
    } else player = loadImage("NegativeCharacter.png");
  }

  Player()
  {
    isReady = false;
  }

  void draw()
  {
    //Alonso
    if (jumping && polarity == "Positive") {
      if (velocity.x > 0) {
        player = loadImage("PositiveCharacterJump.png");
      } else player = loadImage("PositiveCharacterJumpRev.png");
    } 


    if (jumping && polarity == "Negative") {
      if (velocity.x > 0) {
        player = loadImage("NegativeCharacterJump.png");
      } else player = loadImage("NegativeCharacterRevJump.png");
    } 

    image(player, position.x, position.y, 100, 100);
    position.add(velocity);
    snapToGround();
  }
  void movement(int key)
  {
    if ( key == 'a')
    {
      velocity.set(-5, 0);
      player = loadImage("PositiveCharacterRev.png");
    }

    if (key == 'd')
    {
      velocity.set(5, 0);
      player = loadImage("PositiveCharacter.png");
    }

    if (!jumping && key == 'w') {

      //going up
      speedY = -20;

      //disallow jumping while already jumping
      jumping = true;
    }
  }

  void movement2(int key)
  {
    if ( key == 'f')
    {

      velocity.set(-5, 0 );
      player = loadImage("NegativeCharacterRev.png");
    }

    if (key == 'h')
    {
      velocity.set(5, 0);
      player = loadImage("NegativeCharacter.png");
    }

    if (!jumping && key == 't') {

      //going up
      speedY = -20;

      //disallow jumping while already jumping
      jumping = true;
    }
  }



  void noMovement(int key)
  {
    if (key == 'a' )
    {
      velocity.set(0, 0);
      player = loadImage("PositiveCharacterRev.png");
    }

    if (key == 'd' )
    {
      velocity.set(0, 0);
      player = loadImage("PositiveCharacter.png");
    }
  }


  void noMovement2(int key)
  {
    if (key == 'f' )
    {
      velocity.set(0, 0);
      player = loadImage("NegativeCharacterRev.png");
    }

    if (key == 'h' )
    {
      velocity.set(0, 0);
      player = loadImage("NegativeCharacter.png");
    }
  }

  void snapToGround()
  {
    position.add(0, speedY);

    if (position.y + 100 > height)
    {
      position.set(position.x, height-100);
      speedY = 0;
      //velocity.set(velocity.x, 0);
      jumping =false;
      println(frameRate);
    } else
    {
      speedY++;
    }
  }



  void repel()
  {
    if (!jumping)
    {
      speedY -=25;
      jumping = true;
    }
  }

  void stickTogether()
  {

    if (!jumping)
    {
      speedY = 0;
      jumping = false;
    }
  }
}
