class Play_Screen {
  Frog frog;
  ArrayList<Car> Cars;
  ArrayList<River_Objects> Floaters;
  float TimerWidth;
  boolean IsBeingTouched;
  Play_Screen() {
    TimerWidth = 250;
    Cars = new ArrayList<Car>();
    Floaters = new ArrayList<River_Objects>();
    IsBeingTouched = false;
    frog = new Frog(width/2-25, height-25);
    for (int i = 25; i < width; i += 175) {
      Cars.add(new Car(i, 525));
    }
    for (int i = 25; i < width; i += 175) {
      Cars.add(new Car(i, 475));
    }
    for (int i = 25; i < width; i += 200) {
      Cars.add(new Car(i, 425));
    }
    for (int i = 25; i < width; i += 250) {
      Cars.add(new Car(i, 375));
    }

    //This is where i start adding the animals and logs to the river

    for (int i = 25; i <= 75; i += 50) {
      Floaters.add(new River_Objects(i, 275));
    }

    for (int i = 175; i < 325; i += 50) {
      Floaters.add(new River_Objects(i, 275));
    }

    for (int i = 375; i < 525; i += 50) {
      Floaters.add(new River_Objects(i, 275));
    }

    for (int i = 575; i < 725; i += 50) {
      Floaters.add(new River_Objects(i, 275));
    }

    for (int i = 75; i < width; i += 200) {
      Floaters.add(new River_Objects(i, 225));
    }

    Floaters.add(new River_Objects(width/2, 175));

    for (int i = 25; i <= 75; i += 50) {
      Floaters.add(new River_Objects(i, 125));
    }
    for (int i = 175; i <= 225; i += 50) {
      Floaters.add(new River_Objects(i, 125));
    }
    for (int i = 325; i <= 375; i += 50) {
      Floaters.add(new River_Objects(i, 125));
    }
    for (int i = 475; i <= 525; i += 50) {
      Floaters.add(new River_Objects(i, 125));
    }
    Floaters.add(new River_Objects(width/5, 75));

    Floaters.add(new River_Objects(width*4/5, 75));
  }

  void draw() {
    background(#0039FF);
    fill(0);
    rect(width/2, height*3/4, width, height/2);
    fill(255, 0, 255);
    rect(width/2, height+25, width, height/4);
    rect(width/2, height/2+25, width, 50);
    fill(0, 77, 0);
    rect(width/2, 25, width, 50);
    for (Car Kar : Cars) {
      Kar.update();
      if (Kar.location.y == 525) {
        Kar.car(0);
        if (frog.location.x > Kar.location.x-50 && frog.location.x < Kar.location.x+50 && frog.location.y == 525) {
          state = 2;
        }
      } else if (Kar.location.y == 475) {
        Kar.car(1);
        if (frog.location.x > Kar.location.x-50 && frog.location.x < Kar.location.x+50 && frog.location.y == 475) {
          state = 2;
        }
      } else if (Kar.location.y == 425) {  
        Kar.car(2);
        if (frog.location.x > Kar.location.x-50 && frog.location.x < Kar.location.x+50 && frog.location.y == 425) {
          state = 2;
        }
      } else if (Kar.location.y == 375) {
        Kar.car(3);
        if (frog.location.x > Kar.location.x-75 && frog.location.x < Kar.location.x+75 && frog.location.y == 375) {
          state = 2;
        }
      }
    }

      IsBeingTouched = false;
    for (River_Objects floaters : Floaters) {
      floaters.update();
      if (floaters.location.y == 275) {
        floaters.floaters(1);
        if (!IsBeingTouched) {
          IsBeingTouched = floaters.isBeingTouched(frog.location.x, frog.location.y, 1);
        }
      }
      if (floaters.location.y == 225) {
        floaters.floaters(2);
        if (!IsBeingTouched) {
          IsBeingTouched = floaters.isBeingTouched(frog.location.x, frog.location.y, 2);
        }
      }
      if (floaters.location.y == 175) {
        floaters.floaters(3);

        if (!IsBeingTouched) {
          IsBeingTouched = floaters.isBeingTouched(frog.location.x, frog.location.y, 3);
        }
      }
      if (floaters.location.y == 125) {
        floaters.floaters(1);
        if (!IsBeingTouched) {
          IsBeingTouched = floaters.isBeingTouched(frog.location.x, frog.location.y, 1);
        }
      }
      if (floaters.location.y == 75) {
        floaters.floaters(3);
        if (!IsBeingTouched) {
          IsBeingTouched = floaters.isBeingTouched(frog.location.x, frog.location.y, 3);
        }
      }
    } 
      if (frog.location.y == 275 && IsBeingTouched) {
        frog.location.x -= .75;
      }else if(frog.location.y == 225 && IsBeingTouched){
        frog.location.x += .75;
      }else if(frog.location.y == 175 && IsBeingTouched){
        frog.location.x += 1;
      }else if(frog.location.y == 125 && IsBeingTouched){
        frog.location.x -= .85;
      }else if(frog.location.y == 75 && IsBeingTouched){
        frog.location.x += 1;
      }
      if (frog.location.y <= 275 && !IsBeingTouched) {
        state = 2;
      }

    frog.draw();
    textSize(50);
    fill(255, 255, 0, 200);
    text("Time", width-70, height-30);
    rect(width/2+140, height-25, TimerWidth, 25);
    TimerWidth -= .175;
  }
  void keyReleased() {
    frog.keyReleased();
  }
}