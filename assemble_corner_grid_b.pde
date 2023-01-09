// Program by Rupert Russell
// MIT Licence
// 23 June 2018
// This program takes a set number of tiles (1000 x 1000) pixels in size
// and uses them to make a 10 x 10 grid.

PImage combinedImgage;  //  Create  variable to hold the image
int counter = 0;
int offset = 10;
int sizeOfTiles = 800;
int gridSize = 10;
int n = 0;

void setup() {
  // make the size of the canvas (1000 + offset) * numOfColumns, (1000+ offset) * numOfRows * 
  size(8000, 8000); // width * height *  of finished 4 x 4 grid 

  background(0);    // black brackground
  noLoop();         // don't repeat the draw section
}

void draw() {
  translate(offset, offset);
  // Combine a gridSize x gridSize Gird of tiles
  for (int i = 0; i < gridSize; i = i + 1) {
    for (int j = 0; j < gridSize; j = j + 1) {

      n = int(random(2));
      println("n = " + n);
      combinedImgage = loadImage(n + ".png");  // load a random corner
      image(combinedImgage, j * (sizeOfTiles + offset), i * (sizeOfTiles + offset));
      counter ++;
    }
  }
  //  exit();
  println("Saving");
  save("grid_009.png");  // save image
  println("Saved");
  exit();
}
