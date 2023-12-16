class Bullet extends Floater
{
 public Bullet (Spaceship bob){
    myCenterX = bob.getmyCenterX();
    myCenterY = bob.getmyCenterY();
    myXspeed = bob.getmyXspeed();
    myYspeed = bob.getmyYspeed();
    myPointDirection = bob.getmyPointDirection();
    accelerate(0.6);
 }
public void show(){
  ellipse((float)myCenterX, (float) myCenterY, 10,10);
}
public void move(){
   myCenterX += myXspeed;    
    myCenterY += myYspeed;     
}

public double getmyCenterX()
     {
     return myCenterX;
      }
       public double getmyCenterY()
     {
     return myCenterY;
      }
 public double getmyXspeed(){
   return myXspeed;
 }
 public double getmyYspeed(){
   return myYspeed;
 }
  public double getmyPointDirection(){
   return myPointDirection;
  }
}
