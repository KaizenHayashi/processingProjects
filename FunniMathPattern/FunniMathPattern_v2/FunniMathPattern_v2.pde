float dimension = 720;
float gridsize = 10;
float step = dimension/(gridsize+1);

void setup() {
  size(720, 720);
  background(30, 15, 80);
  noStroke();
}

void draw() {
  grid();
}

void grid() {
  fill(255);
  for(int x = 0; x < gridsize; x++) {
    for(int y = 0; y < gridsize; y++) {
      float dotSize = dimension/((2*gridsize)+1);
      if (dotSize >= 20) {dotSize = 20;}
      circle(step*(x+1), step*(y+1), dotSize);
    }
  }
}
