float bigness;
int division;
float divisionStep;
float x;
float y;
float stepX;
float stepY;
int countX;
int countY;
float dotSize;


void setup() {
  size(720, 720);
  noStroke();
  background(30, 15, 80);
  bigness = 720;
  
  division = 100;
  
  divisionStep = bigness/division;
  x = bigness/(division+1);
  y = bigness/(division+1);
  stepX = bigness/(division+1);
  stepY = bigness/(division+1);
  countX = 1;
  countY = 1;
  dotSize = (bigness/(2*division)+1);
  if (dotSize >= 10) {
    dotSize = 10;
  }
}

void draw() {
  circle(x, y, dotSize);
  x += stepX;
  countX += 1;
  if (countX == division+1) {
    y += stepY;
    countY += 1;
    x = bigness/(division+1);
    countX = 1;
  }
  if (countY == division+1) {
    noLoop();
  }
}
