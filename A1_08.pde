
/*
Name: PROCHETA
Problem: Make an interactive drawing for which some aspects are controlled using the mouse position on the CANVAS.
*/
boolean firstPoint;
void setup() 
{
  size(500, 500);
  background(255);
  strokeWeight(4);
  noLoop();
}

void draw() 
{
  if(!firstPoint && mousePressed)
  {
    point(mouseX,mouseY);
    firstPoint = true;
    return;
  }
  else if(firstPoint)
  {
    line(pmouseX, pmouseY, mouseX, mouseY);
    firstPoint = false;
  }

}

void mousePressed() {
  redraw();
}
