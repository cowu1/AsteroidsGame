class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;
    myCenterX = 400;
    myCenterY = 400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
}
public void setXspeed (double x){
  myXspeed = x;
}
public void setPointDirection(int direct){
  myPointDirection=direct;
}
public void setMyCenterX(int centerX){
  myCenterX=centerX;
}
public void setMyCenterY(int centerY){
  myCenterY=centerY;
}
public void rotateClockwise(){
  myPointDirection = myPointDirection + 10;
}
public void rotateCounterClockwise(){
  myPointDirection = myPointDirection - 10;
}
 public double getmyCenterX(){
  return myCenterX;
}
public double getmyCenterY(){
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
