void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawStartScreen();
  drawLoseScreen();
 
}

void drawStartScreen() {
  fill(startColor);
  text("Start",displayWidth/2,displayHeight/2);
  drawGameScreen();
  drawPlayer();
  drawPlatforms();
}

void drawLoseScreen() {
}

void drawGameScreen() {
    background(bgColor);

}

void drawPlayer() {
  playerX=displayWidth/2;
  playerY=displayHeight/2;
  playerVx = 0;
  playerVy = 0;
  fill(playerColor);
  
  ellipse(playerX, playerY,2*playerRadius, 2*playerRadius);
  
}

void drawPlatforms() {
  
  fill(platformColor);
  delay(300);
  rect(random(100,500),random(100,900),platformLength,platformHeight);
}

void resetGame(){
  // Initialize Player Position and Velocity
  initializePlatforms();
}

void initializePlatforms() {
  // Create Initial Set of Platforms
}

void displayScore() {
  // Show Player Score in a corner
}