class Player {
  
  boolean player1, player2, paddleMoving;
  float x , y, ySpeed;
  float w , h;
  float paddleFront;
  float bottmY;
  int score;
  
  
  Player (int playerValue) {
    
    if (playerValue == 1) {
      player1 = true;
      x = 20;
      
      paddleFront = x + w + ball.radius;  
    }
    if (playerValue == 2) {
      player2 = true;
      x = 565;
      
      paddleFront = x + 2;
    }
    
    y = 165;
    ySpeed = 1;
    
    w = 15;
    h = 80;
    
    bottmY = y + h;
    
    score = 1;
  }
  
  
  void drawPaddle () {
    fill(#09B945);
    
    if (player1 == true) {
      //rectMode(CENTER);
      rect(x, y, w, h);
    }
    
    if (player2 == true) {
      //rectMode(CENTER);
      rect(x, y, w, h);
    }
  }
  
  
  void movePaddle () {
    
    if (player1 == true) {
      if (keyPressed) {
        if (key == 'w' || key == 'W') {
          y = y - ySpeed;
          if (state.ballCaughtOnLeft == true && player1 == true){
            ball.y = ball.y - ySpeed;
          }
        }
      }
      
      if (keyPressed) {
        if (key == 's' || key == 'S') {
          y = y + ySpeed;
          if (state.ballCaughtOnLeft == true && player1 == true) {
            ball.y = ball.y + ySpeed;
          }
        }
      }  
    }
    
    if (player2 == true) {
      if (keyPressed){
        if (key == CODED) {
          if (keyCode == UP) {
            y = y - ySpeed;
            if (state.ballCaughtOnRight == true && player1 == true) {
              ball.y = ball.y - ySpeed;
            }  
          }
          
          if (keyCode == DOWN) {
            y = y + ySpeed;
            if (state.ballCaughtOnRight == true && player1 == true) {
              ball.y = ball.y + ySpeed;
            }
          }
        }
      }
    }
    
  }
  
  void shootBall () {
    if (keyPressed) {
      if (key == 'H' || key == 'h') {
        if (state.ballCaughtOnLeft == true) {
          ball.xSpeed = ball.xSpeed + 2;
          state.ballCaughtOnLeft = false;;
        }
        
        if (state.ballCaughtOnRight == true) {
          ball.xSpeed = ball.xSpeed + 2;
          state.ballCaughtOnRight = false;
        }
      }
    }
  }




}// end of class
