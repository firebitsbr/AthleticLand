PImage background;

void setup()
{
  size(512,300);
  background = loadImage("Background1.png");
}

void draw()
{
  image(background,0,0);
}