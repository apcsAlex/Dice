void setup()
{ 
  size(1200,1000);
  
  noLoop();
  
}
void draw()
{
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  for (int y = 0; y < 1000; y += 60)
  {
    for (int x = 0; x < 1200; x += 60)
    {
        Die kanye = new Die(x,y);
        kanye.show();
    }
  }
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
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   rect(myX, myY, 50, 50,7);
   if ( numRolled == 1)
   {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 25, myY +25, 10,10);
   } 
   else if ( numRolled == 2)
   {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +38, 10,10);
 }
 else if ( numRolled == 3 )
 {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +38, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 25, myY +25, 10,10);
 }
 else if ( numRolled == 4 )
 {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +38, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +38, 10,10);
 }
 else if ( numRolled == 5 )
 {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +38, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +38, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 25, myY +25, 10,10);
 }
 else if ( numRolled == 6 )
 {
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +25, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 12, myY +38, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +25, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +12, 10,10);
   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   ellipse(myX + 38, myY +38, 10,10);
 }
 }
}
