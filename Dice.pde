
void setup()
{ 
  size(1015, 1000);
  textSize(50);
  noLoop();
}
void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  int numDots = 0;
  for (int y = 0; y < 800; y += 60)
  {
    for (int x = 0; x < 1000; x += 60)
    {

      Die kanye = new Die(x, y);
      kanye.show();
      if (kanye.numRolled == 1)
      {
        numDots = numDots + 1;
      } else if (kanye.numRolled == 2)
      {
        numDots = numDots + 2;
      } else if (kanye.numRolled == 3)
      {
        numDots = numDots + 3;
      } else if (kanye.numRolled == 4)
      {
        numDots = numDots + 4;
      } else if (kanye.numRolled == 5)
      {
        numDots = numDots + 5;
      } else if (kanye.numRolled == 6)
      {
        numDots = numDots + 6;
      }
    }
  }
  fill(0);
    text("Total: " + numDots, 400, 900);
}


void mousePressed()
{
  redraw();
}
class Die 
{

  //variable decleration here
  int numRolled, myX, myY;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    numRolled = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(myX, myY, 50, 50, 7);
    if ( numRolled == 1)
    {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 25, myY +25, 10, 10);
    } else if ( numRolled == 2)
    {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +38, 10, 10);
    } else if ( numRolled == 3 )
    {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +38, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 25, myY +25, 10, 10);
    } else if ( numRolled == 4 )
    {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +38, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +38, 10, 10);
    } else if ( numRolled == 5 )
    {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +38, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +38, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 25, myY +25, 10, 10);
    } else if ( numRolled == 6 )
    {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +25, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 12, myY +38, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +25, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +12, 10, 10);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(myX + 38, myY +38, 10, 10);
    }
  }
}
