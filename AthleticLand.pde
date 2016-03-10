float player_x = 150;
float player_y = 220;
float player_width = 32;
float player_height = 64;
boolean player_pressed_left = false;
boolean player_pressed_right = false;
boolean player_pressed_jump = false;
PImage background;
PImage image_player_right;
void setup()
{
  size(512,300);
  background = loadImage("Background1.png");
  image_player_right = loadImage("MainCharStandRight.png");
}

void draw()
{
  process_keys();
  image(background,0,0);
  image(image_player_right, player_x - (player_width / 2), player_y - (player_height / 2));
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT ) { player_pressed_left = true; }
    if (keyCode == RIGHT) { player_pressed_right = true; }
    if (keyCode == UP) { player_pressed_jump = true; }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT ) { player_pressed_left = false; }
    if (keyCode == RIGHT) { player_pressed_right = false; }
    if (keyCode == UP) { player_pressed_jump = false; }
  }
}


void process_keys()
{
  float accelation_horizontal = 1.0;
  //float friction_horizontal = 0.9; 
  //float initial_jump_speed = -20.0;
  
  if (player_pressed_left) { 
    player_x -= accelation_horizontal; 
  }
  if (player_pressed_right) { 
    player_x += accelation_horizontal; 
  }
  //if (player_pressed_jump && !is_player_left_jumping)
  //{
  //  is_player_left_jumping = true;
  //  player_left_dy = initial_jump_speed;
  //}
}