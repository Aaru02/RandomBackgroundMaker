int Ballcount= 35;
float [] x = new float[Ballcount]; 
float [] y = new float[Ballcount];
float [] Color = new float [Ballcount];
float [] StrokeC = new float [Ballcount];
float [] dirX = new float [Ballcount];
float [] dirY = new float [Ballcount];
int i;

//This is a random background maker! It changes its position randomly everytime.
//You can change its color and remove the HSB colormode so it can be the color you want
//Change the fill color down in the draw section.

//You can make the ballsmove in random directions if you use the code bellow
// x[i]=x[i]+1.25*dirX[i];
// y[i]=y[i]+1.25*dirY[i];


void setup ()
{
  fullScreen();
  colorMode (HSB);
  background (0, 0, 0);

  for (int i = 0; i < Ballcount; i++)
  {
    dirX[i] = random(-1, 1);
    dirY[i] = random(-1, 1);
    Color[i] = random(255);
    StrokeC[i] = random(255);
    x[i] = random(width);
    y[i] = random(height);
  }
}

void draw ()
{
  for (int i = 0; i < Ballcount; i++)
  {
    stroke (StrokeC[i], 255, 255);
    strokeWeight (3);
    fill (Color[i], 255, 255);
    ellipse (x[i], y[i], 50, 50);
    x[i]++;
    y[i]++;
  }
}