ArrayList<Asteroid> bobbies = new ArrayList<Asteroid>();

//Asteroid [] bobbies = new Asteroid[10];
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];

public void setup() 
{
  size (800,800);
 background(0);
 frameRate(2000);
   for (int i=0; i<nightSky.length;i++)
  {
    nightSky[i]= new Star();
  }
  for (int i=0; i<5;i++)
  {
    bobbies.add(new Asteroid());
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
  fill(255);
  for (int i = 0; i<bobbies.size();i++)
  {
        bobbies.get(i).move();
    bobbies.get(i).show();
  }
  for (int i =0; i<bobbies.size();i++)
  {
float d = dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)bobbies.get(i).getmyCenterX(), (float)bobbies.get(i).getmyCenterY());
if (d<20){
  bobbies.remove(i);
}
}
}
public void keyPressed(){
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
 
 }
 if (key =='s')
 {
   bob.accelerate(-0.1);
 }
}
