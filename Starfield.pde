Particle[] particles;
void setup()
{
  particles = new Particle[90];
  for (int i=0; i<particles.length; i++)
  {
    particles[i]=new NormalParticle();
  }
  particles[0]=new OddballParticle();
  noStroke();
  size(400, 400);
}
void draw()
{
  fill(0,10);
  rect(0,0,700,700);
  for (int i=0; i<particles.length; i++)
  {
    particles[i].move();
    particles[i].show();
  }
}
class NormalParticle implements Particle
{
  double x, y, angle, speed,  size;
  int c;
  NormalParticle()
  {
    size= 5;
    x=200;
    y=200;
    angle=(Math.random()*360);
    speed=(Math.random()*3)+1;
    c=(int)(Math.random()*255)+1;
  }
  public void show()
  {
    ellipse((float)x, (float)y, (float)size,(float)size);
    fill(255, c, 0);
  }
  public void move()
  {
    x = x+(double)((Math.cos((float)angle)*0.5))+speed;
    y = y+(double)((Math.sin((float)angle)*0.5))+speed;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  public void show()
  {
  }

  public void move()
  {
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}

