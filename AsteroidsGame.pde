ArrayList <Bullet> shots = new ArrayList<Bullet>();
ArrayList<Asteroid> bobbies = new ArrayList<Asteroid>();

//Asteroid [] bobbies = new Asteroid[10];
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];

public void setup() 
{
  size (800, 800);
  background(0);
  frameRate(2000);
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i]= new Star();
  }
  for (int i=0; i<5; i++)
  {
    bobbies.add(new Asteroid());
  }
} 


public void draw() 
{
  background(0);
  fill(255);
  for (int i = 0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  fill(0);
  bob.show();
  bob.move();
  fill(255);
  for (int i = 0; i<bobbies.size(); i++)
  {
    bobbies.get(i).move();
    bobbies.get(i).show();
  }
  for (int i =0; i<bobbies.size(); i++)
  {
    float d = dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)bobbies.get(i).getmyCenterX(), (float)bobbies.get(i).getmyCenterY());
    if (d<20) {
      bobbies.remove(i);
    }
  }
 

   
     for (int i = shots.size()-1; i >= 0; i--) {
    Bullet currentbullet = shots.get(i);
    if (currentbullet.getmyCenterX() == width || currentbullet.getmyCenterX() == 0 || currentbullet.getmyCenterY() == height || currentbullet.getmyCenterY() == 0) {
      shots.remove(i);
    } else {
      currentbullet.move();
      currentbullet.show();
    }
    for (int j = bobbies.size()-1; j >= 0; j--) {
      float d = dist((float)currentbullet.getmyCenterX(), (float)currentbullet.getmyCenterY(), (float)bobbies.get(j).getmyCenterX(), (float)bobbies.get(j).getmyCenterY());
      if (d < 20) {
        bobbies.remove(j);
        shots.remove(i);    
        break;
      }
    }
  }
   
   
}
   
    
    
    
    
    
    
    public void keyPressed() {
      if (key == 'h')
      { 
        bob.setPointDirection((int)(Math.random()*360));
        bob.setMyCenterX((int)(Math.random()*400));
        bob.setMyCenterY((int)(Math.random()*400));
      }
      if (key== 'd')
      {
        bob.rotateClockwise();
      }
      if (key=='a')
      {
        bob.rotateCounterClockwise();
      }
      if (key == 'w')
      {
        bob.accelerate(0.1);
        bob.accelerate(0);
      }
      if (key =='s')
      {
        bob.accelerate(-0.1);
      }
      if (key == '8') {
        shots.add(new Bullet(bob));
      }
    }
