class Helpscreen
{
  Player player1, player2;
  PImage splashArt;

  Helpscreen()
  {
    splashArt = loadImage("HowToPlay.png");
    player1 = new Player();
    player2 = new Player();
  }

  void update()
  {
    background(0);
    image(splashArt, 0, 0);

    if ( player1.isReady == true && player2.isReady == true)
    {
      state = 2;
    }
  }

  void keyPressed()
  {
    if ( key == 'w' && state == 1) 
    {
      player1.isReady = true;
    }

    if ( key == 't' && state == 1)
    {
      player2.isReady = true;
    }
  }
}
