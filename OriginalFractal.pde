public void setup(){
  size(500, 500);
  background(0,0,0);
  drawCircles(width, height, width);
}
public void drawCircles(int x, int y, int rad){
  noFill();
  if (rad > 50){
    drawCircles(x - rad/2, y, rad/2);
    drawCircles(x, y - rad/2, rad/2);
    drawCircles(x + rad/2, y, rad/2);
    drawCircles(x, y + rad/2, rad/2);
  }
  stroke((float)Math.random() * 200 + 200, (float)Math.random() * 200 + 200, (float)Math.random() * 200 + 126 );
  ellipse(x/2, y/2, rad, rad);
}