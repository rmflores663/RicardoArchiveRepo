class Winscreen
{
  Player player1, player2;
  PImage backgroundImg;

  Winscreen()
  {
    player1 = new Player();
    player2 = new Player();
    backgroundImg = loadImage("ARLevel1.png");
  }

  void backgroundImage()
  {
    image(backgroundImg, 0, 0);
  }

  void update()
  {
    background(0);
    backgroundImage();
    textSize(125);
    textAlign(CENTER);
    text( "YOU WON", width/2, height/2);

    if ( player1.isReady == true && player2.isReady == true)
    {
      state = 7;
    }
  }

  void keyPressed()
  {
    if ( key == 'w' && state == 5) 
    {
      player1.isReady = true;
    }

    if ( key == 't' && state == 5)
    {
      player2.isReady = true;
    }
  }
  
   void reset()
  {
   player1.isReady = false;
   player2.isReady = false;
  }
}
