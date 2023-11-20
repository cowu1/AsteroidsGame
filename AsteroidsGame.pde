Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];

public void setup() 
{
  size (400,400);
 background(0);
 frameRate(2000);
   for (int i=0; i<nightSky.length;i++)
  {
    nightSky[i]= new Star();
  }
} 
public void draw() 
{
  background(0);
  fill(255);
  for (int i = 0; i<nightSky.length;i++)
  {
    nightSky[i].show();
  }
  fill(0);
  bob.show();
  bob.move();
  redraw();
}
public void keyPressed(){
  if (key == 'h')
  { 
    bob.setPointDirection((int)(Math.random()*360));
    background(0);
    bob.setMyCenterX((int)(Math.random()*400));
    bob.setMyCenterY((int)(Math.random()*400));
  }
  if (key== '4')
  {
    bob.rotateClockwise();
    background (0);
  }
  if (key=='5')
  {
    bob.rotateCounterClockwise();
    background(0);
  }
if (key == 'a')
 {
   bob.accelerate(0.25);
 }
}
