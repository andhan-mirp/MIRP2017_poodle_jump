void updatePlayerVelocity() {
  // Update Player Velocities according to keys pressed
   if (left)
   playerX = playerX - PLAYER_HORIZ_VELOCITY;
   if (right) 
   playerX = playerX + PLAYER_HORIZ_VELOCITY;
   if(up)
   playerY = playerY - MAX_VERT_VELOCITY;
  // Apply Gravity and Air Drag
   playerVy+=gravity;
   for( i=0;i<5;i++)
  {
   playerVx*=dragCoeff;
  }
}

void updatePlayerPosition() {
  playerX += playerVx;
  playerY += playerVy;
  // If Player falls out of side of screen, enter from opposite side
  if (playerX > displayWidth-playerRadius){
    playerX = playerRadius;

  }
   if (playerX < playerRadius){
    playerX=displayWidth - playerRadius;
   }
}

void updatePositions() {
  // If the player goes into the top half of screen
  // Move the view upwards 
  // This is also when you should generate new platforms
   if ( playerY <playerRadius){
   playerY = playerRadius;
   playerVy = MAX_VERT_VELOCITY;
    y = 1;
   }
 
}

void resolveCollisions() {
  // Collisionsonly happen when the player is falling
  
   if (playerY > displayHeight-playerRadius){
   playerY = displayHeight-playerRadius;
   playerVy = 0 ;
   x = 1;
   }
  // If Player lands on a platform, bounce off with PLAYER_VERT_VELOCITY
   if(playerY < platformHeight + playerRadius){
   playerY = platformHeight + playerRadius;
   playerVy = MAX_VERT_VELOCITY;
   playerLose();
   }
}