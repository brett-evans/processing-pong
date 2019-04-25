class Player {
  
  boolean player1, player2;
  float x , y, ySpeed;
  float w , h;
  float paddleFront;
  int score;
  
  
  Player (int playerValue) {
    
    if (playerValue == 1) {
      player1 = true;
      x = 25;
      paddleFront = w/2 + x;  
    }
    if (playerValue == 2) {
      player2 = true;
      x = 575;
      paddleFront = w/2 - x;
    }
    
    y = 200;
    ySpeed = 1;
    
    w = 15;
    h = 80;
    
    score = 1;
  }
  
  
  void drawPaddle () {
    fill(#09B945);
    
    if (player1 == true) {
      rectMode(CENTER);
      rect(x, y, w, h);
    }
    
    if (player2 == true) {
      rectMode(CENTER);
      rect(x, y, w, h);
    }
  }
  
  
  void movePaddle () {
    
    if (player1 == true) {
      if (keyPressed) {
        if (key == 'w' || key == 'W') {
          y = y - ySpeed;
        }
      }
      
      if (keyPressed) {
        if (key == 's' || key == 'S') {
          y = y + ySpeed;
        }
      }  
    }
    
    if (player2 == true) {
      if (keyPressed){
        if (key == CODED) {
          if (keyCode == UP) {
            y = y - ySpeed;
            
          }
          
          if (keyCode == DOWN) {
            y = y + ySpeed;
          }
        }
      }
    }
    
  }
  //void shootBall () {
  
  
  
  
  //}




}// end of class
