Credit credit;
Helpscreen help;
Lvl1 lvl1;
Lvl2 lvl2;
Lvl3 lvl3;
Losescreen lose;
Titlescreen title;
Winscreen win;
Timer timer;
int state ;

void setup()
{
  //fullScreen();
  size(1920, 1080);
  credit=new Credit();
  help=new Helpscreen();
  lvl1=new Lvl1(0, 0);
  lvl2=new Lvl2(0, 0);
  lvl3=new Lvl3(0, 0);
  lose=new Losescreen();
  title=new Titlescreen();
  win=new Winscreen();
  timer = new Timer(width/2, height/20);
  state = 0;
}

void draw()
{
  switch(state)
  {
    case(0):
    title.update();
    lvl1.reset();
    lvl2.reset();
    lvl3.reset();
    
    timer.timerReset();

    break;

    case(1):
    help.update();
    break;


    case(2):
    lvl1.play();
    timer.display();
    timer.timerStart();

    win.reset();
    lose.reset();
    credit.reset();
    title.reset();
    break;

    case(3):
    lvl2.play();
    timer.display();
    timer.timerStart();
    break;

    case(4):
    lvl3.play();
    timer.display();
    timer.timerStart();
    break;

    case(5):
    win.update();
    timer.timerStop();

    break;

    case(6):
    lose.update();

    break;

    case(7):
    credit.update();
    break;
  }
}

void keyPressed()
{
  lvl1.keyPressed();
  lvl2.keyPressed();
  lvl3.keyPressed();

  title.keyPressed();
  help.keyPressed();
  win.keyPressed();
  credit.keyPressed();
  lose.keyPressed();
}

void keyReleased()
{
  lvl1.keyReleased();
  lvl2.keyReleased();
  lvl3.keyReleased();
}
