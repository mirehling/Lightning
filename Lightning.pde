int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int treeR = 10;
int treeG = 180;

void setup()
{
  size(300,300);
  strokeWeight(2.5);
  background(210, 210, 230);
}
void draw()
{
  fill(120, 60, 0);
  rect(0, 295, 300, 5);
  float lineColorY = (float) (Math.random()*50)+200;
  stroke(lineColorY, lineColorY, 0);
  
  while(endY < 300){
    endX = startX + ((int)(Math.random()*19))-9;
    endY = startY + ((int)(Math.random()*9))+1;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    if(95 < startX && startX < 125 && 262 < startY && startY < 292){
    treeR = 200;
    treeG = 0;
  } 
  }
  noStroke();
  fill(treeR, treeG, 20);
  ellipse(110, 262, 25, 25);
  fill(150, 75, 0);
  rect(102, 270, 16, 30);
  

}
void mousePressed()
{
startX = 150;
endX = 150;
startY = 0;
endY = 0;
}
