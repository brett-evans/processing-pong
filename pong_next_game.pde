boolean crash;
boolean scoreZone;

GameState state = new GameState();
Ball ball = new Ball();
Player p1 = new Player(1);
Player p2 = new Player(2);


void setup() {
  background (0);
  size (600,400);
}


void draw() {
  background(0);
  
  state.drawGameBoard();
  state.drawScoreCards();
  state.scoreKeeper();
  state.crashDetective();
  
  ball.drawBall();
  ball.ballMove();
  
  
  //if (state.goal == true) {
  //  state.drawReset();
  //  //ball.ballReset();
  //}
  
  p1.drawPaddle();
  p1.movePaddle();
  //p1.shootBall();
  
  p2.drawPaddle();
  p2.movePaddle();

}
