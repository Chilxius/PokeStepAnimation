PImage red1, red2, nran;

void setup()
{
  size(800,500);
  //crops the first step from the large image
  red1 = loadImage("red.png").get(40,249,33,33);
  //crops the second step from the large image
  red2 = loadImage("red.png").get(40,287,33,33);
  //loads the nidoran image
  nran = loadImage("032.png");
  //resizes the images
  red1.resize(50,0);
  red2.resize(50,0);
  nran.resize(0,40);
  
  //makes images centered
  imageMode(CENTER);    
  
  stroke(255);
  strokeWeight(5);
  fill(170);
}

void draw()
{
  background(0);
  
  //draw still image of player and nidoran
  if(mousePressed)
  {
    image(red1,width/2,150);
    image(nran,width/2-40,155);
  }
  //draws alternating image of player walking
  else
  {
    if(millis()/500%2==1)
      image(red1,width/2,150);
    else
      image(red2,width/2,152);
  }
  
  rect(50,height/2,width-100,height/2-50,40);
}
