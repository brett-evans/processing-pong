class GameState {
  boolean goal;
  boolean ballCaughtOnLeft, ballCaughtOnRight;  
  // drawing game board
  
  GameState () {
    ballCaughtOnLeft = false;
    ballCaughtOnRight = false;
  } 
  
  
  void drawGameBoard () {
    fill(#0FAA44);
    noStroke();
    rectMode(CORNER);
    ellipse(300, 200, 100, 100);
    fill(#000000);
    ellipse(300, 200, 85, 85);
    fill(#0FAA44);
    rect(298, 0, 5, height);
  }
  
  //void drawReset () {
  //  fill(#04B20D);
  //  rectMode(CENTER);
  //  rect(200, 300, 100, 50);
  //  text("Launch", 195, 295);
  //}
  
  
  void drawScoreCards() {
    fill(#0FAA44);
    rectMode(CORNER);
    rect(125, 25, 50, 50);
    rect(425, 25, 50, 50);
    
    fill(#010A04);
    
    textSize(10);
    text("player 1", 130, 40);
    text("player 2", 430, 40);
    
    textSize(15);
    text(p1.score, 145, 60);
    text(p2.score, 445, 60);
  }
  /// collision detection
  
  
  
  void crashDetective () {
    float ballHRx, ballHLx, ballHTy, ballHBy;
    
    ballHRx = ball.x + ball.radius;
    ballHLx = ball.x - ball.radius;
    ballHTy = ball.y - ball.radius;
    ballHBy = ball.y + ball.radius;
    
    if (ballHLx <= p1.paddleFront && ballHTy >= p1.y && ballHBy <= p1.bottmY) {
      ball.xSpeed = ball.xSpeed * -1;
    }
    
    if (ballHRx <= p2.paddleFront && ball.y - ball.radius >= p2.y && ball.y + ball.radius <= p2.bottmY) {
      ball.xSpeed = ball.xSpeed * -1;
    } 
      
    
  }
  
  void scoreKeeper () {
    
    if (ball.x < 0 ) {
      p2.score = p2.score + 1;
      ball.xSpeed = 0;
      ball.x = p1.x + ball.radius;
      ball.y = p1.y + p1.h/2;
      ballCaughtOnRight = true;
    }
      
    if (ball.x > width) {
      p1.score = p1.score + 1; 
      ball.xSpeed = 0;
      ball.x = p2.x + p2.w - ball.radius;
      ball.y = p2.y + p2.h/2;
      ballCaughtOnRight = true;
    }
  }  
}
