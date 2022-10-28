// pattern 0001
// fjenett 20100523

float w8, h8;  // width, height div 8
float angle; 
float angleVel;
boolean rec = false;

void setup ()
{
  size(1200, 1000);
  frameCount = 10;

  smooth();

  w8 = width / 32.0;
  h8 = height / 32.0;
}

void draw ()
{
  //rotateY(mouseX);
  //background(250);
  for ( int ix = 0; 
    ix < 32; 
    ix++ )
  {
    strokeWeight(.25 * second()%2);
    for ( int iy = 0; iy < 32; iy++ )
    {
      //fill(ix / second()%3);

      int choice = int(random(3));

      switch ( choice )
      {
      case 0:
        rect( ix*w8, iy*h8, w8, h8 );
        break;
      case 1:
        line( ix*w8, iy*h8+h8, ix*w8+w8, iy*h8 );
        break;
      case 2:
        for ( int i = 0; i < 32; i++ )
        {
          line((ix*w8), iy*h8+i*w8/8, ix*w8+w8, iy*h8+i*w8/8);
        }
        
      }
    }
  }
  if(rec) {
    saveFrame("frames#/####.png");
  }
}

void mousePressed ()
{
  //rec = true;
}
