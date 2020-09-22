
PongBall PB = new PongBall();
PongPabble PP = new PongPabble();
PongGame PG = new PongGame();
void setup() {
  size(400, 400);
  background(0);
  noStroke();
  fill(102);
  PG.startGame();
}
void draw() {

  background(0);
  if (PB.reBound() == false){
    PB.in_Move();
  }else{
  print("GG");
}
  PB.draw();
  PB.reBound();
  PP.Pabble1();
  PP.Pabble2();
  PP.mouseMoved();
}
class PongPabble {
  float positiony;
  PongPabble() {
  }
  void mouseMoved() {
    if (int(mouseY)<= 300) {
      positiony = int(mouseY);
    }
  }
  int Pabble1() {
    rect(0, positiony, 10, 100);
    return int(positiony);
  }

  int Pabble2() {
    rect(390, positiony, 10, 100);
    return int(positiony);
  }
}

class PongBall {
  float velocity_x;
  float velocity_y;
  float position_x;
  float position_y;
  int speed;
  boolean reB;
  float moveX;
  float moveY;
  PongBall() {
  }
  void calBall() {
    position_x = 200;
    position_y = 200;
  }
  void in_Move() {
    position_x  = position_x + 2;
  }
  void draw() {
    ellipse(position_x, position_y, 30, 30);
  }
  boolean reBound() {
    if (position_y >= PP.Pabble1() && position_y <= PP.Pabble1()+100 ) {
      if (position_x <= 10 &&position_x >= 0) {
        moveY = 2*((position_y - (PP.Pabble1()+50))/100);
        moveX =  2*(1-((position_y - (PP.Pabble1()+50))/100));
        reB = true;
      }else
      {
        if (position_x >= 390 &&position_x <= 400) {
         moveY = 2*((position_y - (PP.Pabble1()+50))/100);
         moveX = -1*2*(1-((position_y - (PP.Pabble1()+50))/100));
          reB = true;
        }
      }
     
    }
    if(position_y <= 0){
    moveX = 1-((400 - position_x)/400);
    moveY = (400 - position_x)/400;
    }
    if(position_y > 400){
    moveX = 1-((400 - position_x)/400);
    moveY= -1*(400 - position_x)/400;
    }
    
    position_x += moveX;
position_y += moveY;
return(reB);  


}
  

  int speedCal() {

    return speed;
  } 

  float calX() {
    return position_x;
  }

  float calY() {
    return position_y;
  }
}


class PongGame {
  int playerAScore;
  int playerBScore;

  void startGame() {
    PB.calBall();
  }

  void pauseGame() {
  }
}
