TimerS TimerS1;
class Timer{
 Timer(){
   TimerS1 = new TimerS();
   TimerX = 680;
   TimerY = 0;
   TimerW = 670;
   TimerH = 50;
 }
 void draw(){
  TimerS1.draw();
  rect(TimerX, TimerY, TimerW, TimerH);
  TimerW -= 0+(11/6);
 }
}