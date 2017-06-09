void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw(){
 
    drawStartScreen();
    drawLoseScreen();
    updatePlayerVelocity();
    updatePlayerPosition();
    resolveCollisions();
    
 
}

void drawStartScreen() {
  fill(startColor);
   text("Start",displayWidth/2,displayHeight/4);
   if(START == 's'){
  if ( gameState == 0){
    //delay(1000);
    drawGameScreen();
    drawPlayer();
    drawPlatforms();
    }  
  }
}

void drawLoseScreen() {
}

void drawGameScreen() {
    background(bgColor);

}

void drawPlayer() {
 
  playerVx = 0;
  playerVy = 0;
  fill(playerColor);
  ellipse(playerX, playerY,2*playerRadius, 2*playerRadius);
  
  
}

void drawPlatforms() {
  for(i=0;i<=8;i++){
  fill(platformColor);
  platforms[i][0] = 30; 
  rect(displayWidth/2,displayHeight/2+playerRadius,platformLength,platformHeight,platformRadius,platformRadius,platformRadius,platformRadius);
  }
  if ( y==1){
  fill(platformColor);
  rect(random(100,800),random(100,800),platformLength,platformHeight,platformRadius,platformRadius,platformRadius,platformRadius);
  }
}

void resetGame(){
  // Initialize Player Position and Velocity
  if ( x == 1)
{
 gameState = 2;
}
if ( gameState == 2 ){
  text("You lose",displayWidth/2,displayHeight/4);
  delay(1000);
  initializePlatforms();
}
}

void initializePlatforms() {
  // Create Initial Set of Platforms
  
  
}

void displayScore() {
  // Show Player Score in a corner
}