Particle[] particles;
void setup()
{
  particles = new Particle[50];
  for (int i=0; i<particles.length; i++)
  {
    particles[i]=new NormalParticle();
  }
  for(int i=0; i<9; i++)
  {
   particles[i]=new OddballParticle(); 
  }
  noStroke();
  size(400, 400);
}
void draw()
{
  fill(0, 30);
  rect(0, 0, 700, 700);
  for (int i=0; i<particles.length; i++)
  {
    particles[i].move();
    particles[i].show();
  }
}
class NormalParticle implements Particle
{
  double x, y, angle, speed, size;
  int c;
  NormalParticle()
  {
    size=0;
    x=200;
    y=200;
    angle=(Math.random()*360);
    speed=(Math.random()*3)-1;
    c=(int)(Math.random()*255)+1;
  }
  public void show()
  {
    ellipse((float)x, (float)y, (float)size, (float)size);
    fill(255, c, 0);
    size=size+0.05;
    if (x>360 || x<40 || y>360 || y<40)
    {
      x=200;
      y=200;
      angle=(Math.random()*360);
      speed=(Math.random()*3)-1;
      size=0;
    }
  }
  public void move()
  {
    x = x+(double)((Math.cos((float)angle)))+speed;
    y = y+(double)((Math.sin((float)angle)))-speed;
   size+=0.03;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double x, y, angle, speed, size;
  OddballParticle()
  {
    x=200;
    y=200;
    angle=(Math.random()*360);
    speed=(Math.random()*3)-1;
    size=0;
  }
  public void show()
  {
    fill(255);
    ellipse((float)x,(float)y,(float)size,(float)size);    
  }

  public void move()
  {
    x = x+(double)((Math.cos((float)angle)))+speed;
    y = y+(double)((Math.sin((float)angle)))-speed;
    angle=+200;
    size=+0.02;
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}

