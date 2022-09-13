class GameEntity
{

  PVector position, velocity, scale;


  GameEntity(float x, float y)
  {
    position = new PVector(x, y);
    velocity=new PVector(0, 0);
    scale=new PVector(0, 0);
  }
  void update()
  {
  }

  void display()
  {
    position.add(velocity);
  }
  void movement()
  {
  }

  void cancelmovement()
  {
  }
}
