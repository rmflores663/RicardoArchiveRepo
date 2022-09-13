class Credit
{
  Player player1, player2;
  Credit()
  {
    player1 = new Player();
    player2 = new Player();
  }

  void update()
  {
    background(0);
    textAlign(CENTER);
    textSize(50);
    text("Programming By Group A", width/2, height/2-100);
    text("Character Art by Alonso Morales", width/2, height/2-50);
    text("Music By Jordan Green", width/2, height/2);
    text("Game Design By Ricardo Flores", width/2, height/2+50);
    
    text("Score: " + timer.getHighScore(), width/2, height/2+100);

    if ( player1.isReady == true && player2.isReady == true)
    {
      state = 0;
    }
  }

  void keyPressed()
  {
    if ( key == 'w' && state == 7) 
    {
      player1.isReady = true;
    }

    if ( key == 't' && state == 7)
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
