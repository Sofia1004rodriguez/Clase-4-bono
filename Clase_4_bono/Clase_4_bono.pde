int numBubbles =20;
float[]xPositions;
float[]yPositions;

float[]xSpeed;
float[]ySpeed;

int[] xDirection;
int[] yDirection;

void setup() {
  size (1000, 1000);

  noStroke();

  xPositions=new float[numBubbles];
  yPositions= new float[numBubbles];

  xSpeed=new float[numBubbles];
  ySpeed= new float[numBubbles];

  xDirection=new int[numBubbles];
  yDirection= new int[numBubbles];

  for (int i= 0; i < xPositions.length; i++) {
    xPositions[i]= random(width);
    yPositions[i]= random(width);
    xSpeed[i]= random(5);
    ySpeed[i]= random(5);
    xDirection[i]=(random (1)> 0.5)? 1:-1;
    yDirection[i]=(random (1)> 0.5)? 1:-1;
  }
}
void draw ()

{
  background (0);
  for (int i=0; i< numBubbles; i++) {
    xPositions[i]=xPositions[i]+xSpeed[i]* xDirection[i];
    yPositions[i]=yPositions[i]+ySpeed[i]* yDirection[i];

    if (xPositions[i] >= width ||xPositions[i]<0) {
      xDirection [i]= xDirection [i]*-1;
    }

    if (yPositions[i] >= height ||yPositions[i]<0) {
      yDirection [i]= yDirection [i]*-1;
    }

fill(180,20,60);
    ellipse( xPositions[i], yPositions[i], 50, 50);
  }
}
