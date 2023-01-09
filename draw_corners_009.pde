// Draws the 2 tiles used by assemble_corners_grid_b 
// which creates the 10 print design
// artwork on redbubble at:

void setup() {
  size(800, 800);
  noLoop();
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(90); 
  // /
  line(width , 0, 0, height);
  
  //rect(0,0,45,45);
  //rect(width-45,height-45,45,45);
  save("0.png");
  background(0);
  // \
  line(0, 0, height, width);
  //rect(width-45,0,45,45);
  //rect(0,height-45,45,45);
  save("1.png");
}
