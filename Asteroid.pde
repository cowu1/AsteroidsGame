class Asteroid extends Floater
{
  protected double rotSpeed;
   public Asteroid(){      
     corners = 12;
      xCorners = new int [corners];
      yCorners = new int [corners];
        xCorners[0]= -11;
      yCorners[0]= -8;
      xCorners[1]= 7;
      yCorners[1]= -8;
      xCorners[2]=13;
      yCorners[2]=0;
      xCorners[3]=6;
      yCorners[3]=10;
      xCorners[4]=-11;
      yCorners[4]=8;
      xCorners[5]=-5;
      yCorners[5]=0;

      myColor = 255;
    myCenterX = (double)(Math.random()*400);
    myCenterY = (double)(Math.random()*400);;
    myXspeed = (double)(Math.random()*2-1);
    myYspeed = (double)(Math.random()*2-1);
    myPointDirection = 0;
      rotSpeed = (int)(Math.random()*0.1+1);

    }
      public void move()
      {
        turn(rotSpeed);
        super.move();
      }
       public double getmyCenterX()
     {
     return myCenterX;
      }
       public double getmyCenterY()
     {
     return myCenterY;
      }
  
  }
