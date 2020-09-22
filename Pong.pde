PongBall PB = new PongBall();
PongPabble PP = new PongPabble();
void setup() {
  size(400, 400);
  background(0);
  noStroke();
  fill(102);
}
void draw() {
  background(0);
  PB.draw();
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
  void Pabble1() {
    rect(0, positiony, 10, 100);
  }

  void Pabble2() {
    rect(390, positiony, 10, 100);
  }
  void move() {
  }
}

class PongBall {
  float velocity_x;
  float velocity_y;
  float position_x;
  float position_y;
  int speed;
  PongBall() {
  }
  void draw() {
    ellipse(200, 200, 30, 30);
  }
  void reBound() {
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
  }

  void pauseGame() {
  }
}
