void setup()
{
  size(500,500);
  background(151,218,250);
}

int x = 330;
int y = 280;

void draw ()
{
  background(151,218,250);
  clouds();
  ground();
  sun();
  person();
  face();
  balloons();
  y-=1;
  if (y<-175)
  {
    y=280;
  }
}

void clouds()
{
  fill(255);
  noStroke();
  ellipse(70,150,30,40);
  ellipse(100,150,40,50);
  ellipse(130,150,30,40);
  ellipse(230,100,30,40);
  ellipse(260,100,40,50);
  ellipse(290,100,30,40);
  ellipse(340,150,30,40);
  ellipse(370,150,40,50);
  ellipse(400,150,30,40);
}

void ground()
{
  //noStroke();
  fill(90,64,31);
  rect(-10,480,520,100);
}

void sun()
{
  fill(255,248,18);
  ellipse(100,60,100,100);
}

void person()
{
  fill(255);
  ellipse(350,380,50,50);
  fill(255);
  strokeWeight(1.5);
  stroke(0);
  line(350,405,350,470);
  line(350,415,370,440);
  line(350,415,330,440);
  line(350,470,370,490);
  line(350,470,330,490);
}

void face()
{
  fill(0);
  ellipse(360,380,5,5);
  ellipse(332,380,5,5);
  strokeWeight(1);
  stroke(0);
  line(362,390,332,395);
}

void balloons()
{
  //balloons
  noStroke();
  fill(222,25,25); // red
  ellipse(x-30,y+15,40,50);
  fill(93,201,242); // blue
  ellipse(x+20,y+20,40,50);
  fill(244,255,162); // yellow
  ellipse(x,y,40,50);
  //strings
  strokeWeight(1);
  stroke(0);
  noFill();
  //red balloon
  bezier(x-30,y+40,x-80,y+60,x+30,y+120,x,y+160);
  //blue balloon
  bezier(x+20,y+45,x-80,y+80,x+30,y+120,x,y+160);
  //yellow
  bezier(x,y+25,x+20,y+70,x-30,y+20,x,y+160);
}