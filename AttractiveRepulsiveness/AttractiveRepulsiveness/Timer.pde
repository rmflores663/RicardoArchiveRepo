//timer class Steven

class Timer
{
  PVector position;
  float timer;
  float timeAdded;

  Timer(int x, int y)
  {
    position = new PVector( x, y);
    timer = 0;
  }

  void display()
  {
    textAlign(CENTER);
    textSize(50);
    text(timer/60, position.x, position.y);
  }

  void timerStart()
  {
    timer+= 1;
    println(timer/frameCount);
  }

  void timerStop()
  {
    timer+=0;
    println("stop");
  }

  void timerReset()
  {
    timer = 0;
    println("reset");
  }
  
  float getHighScore()
  {
   return timer/60; 
  }
}
