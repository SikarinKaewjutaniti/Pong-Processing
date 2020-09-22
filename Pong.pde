class PongPabble {
  float positiony;
  
  void move() {
  }
}

class PongBall {
  float velocity_x;
  float velocity_y;
  float position_x;
  float position_y;
  int speed;
  
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
