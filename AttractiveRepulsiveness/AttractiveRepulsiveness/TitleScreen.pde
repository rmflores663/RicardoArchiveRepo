class Titlescreen
{
  PImage splashArt;
  Player player1, player2;

  Titlescreen()
  {
    splashArt = loadImage("Title.png");
    player1 = new Player();
    player2 = new Player();
  }

  void update()
  {
    display();
    if ( player1.isReady == true && player2.isReady == true)
    {
      state = 1;
    }
  }

  void display()
  {
    background(0);
    image(splashArt, 0, 0);

  }

  void keyPressed()
  {
    if ( key == 'w' && state == 0) 
    {
      player1.isReady = true;
    }

    if ( key == 't' && state == 0)
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
