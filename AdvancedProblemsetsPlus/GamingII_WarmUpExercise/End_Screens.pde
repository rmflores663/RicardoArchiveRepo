class EndScreens {
  ArrayList<Car> Cars;
  ArrayList<River_Objects> Floaters;
  EndScreens() {
    Cars = new ArrayList<Car>();
    Floaters = new ArrayList<River_Objects>();
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
  void lose() {
    background(0, 0, 255);
    fill(0);
    rect(width/2, height*3/4, width, height/2);
    fill(255, 0, 255);
    rect(width/2, height+25, width, height/4);
    rect(width/2, height/2+25, width, 50);
    fill(0, 77, 0);
    rect(width/2, 25, width, 50);
    textSize(50);
    fill(0);
    text("You lose", width/2, height/2+20);
    for (Car Kar : Cars) {
      Kar.update();
      if (Kar.location.y == 525) {
        Kar.car(0);
      } else if (Kar.location.y == 475) {
        Kar.car(1);
      } else if (Kar.location.y == 425) {
        Kar.car(2);
      } else if (Kar.location.y == 375) {
        Kar.car(3);
      }
    }
    for (River_Objects floaters : Floaters) {
      floaters.update();
      if (floaters.location.y == 275) {
        floaters.floaters(1);
      }
      if (floaters.location.y == 225) {
        floaters.floaters(2);
      }
      if (floaters.location.y == 175) {
        floaters.floaters(3);
      }
      if (floaters.location.y == 125) {
        floaters.floaters(1);
      }
      if (floaters.location.y == 75) {
        floaters.floaters(3);
      }
    }
  }
  void win() {
    background(0, 0, 255);
    fill(0);
    rect(width/2, height*3/4, width, height/2);
    fill(255, 0, 255);
    rect(width/2, height+25, width, height/4);
    rect(width/2, height/2+25, width, 50);
    fill(0, 77, 0);
    rect(width/2, 25, width, 50);
    textSize(50);
    fill(0);
    text("You Win", width/2, height/2+20);
    for (Car Kar : Cars) {
      Kar.update();
      if (Kar.location.y == 525) {
        Kar.car(0);
      } else if (Kar.location.y == 475) {
        Kar.car(1);
      } else if (Kar.location.y == 425) {
        Kar.car(2);
      } else if (Kar.location.y == 375) {
        Kar.car(3);
      }
    }
    for (River_Objects floaters : Floaters) {
      floaters.update();
      if (floaters.location.y == 275) {
        floaters.floaters(1);
      }
      if (floaters.location.y == 225) {
        floaters.floaters(2);
      }
      if (floaters.location.y == 175) {
        floaters.floaters(3);
      }
      if (floaters.location.y == 125) {
        floaters.floaters(1);
      }
      if (floaters.location.y == 75) {
        floaters.floaters(3);
      }
    }
  }
}