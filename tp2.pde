/*
valentin rollero
89551/0
https://www.youtube.com/watch?v=YsY11lfTyEM
*/
int cant = 10;
color A;
color B;
int colorA=0;
int colorB=255;

void setup() {
  size(400, 400);
  A = color (random(255), random(255), random(255));
  B = color (random(255), random(255), random(255));
}

void draw() {
  background(200);
  dibujarcuadrado(cant);
  }


void mousePressed() {
  A = color (random(255), random(255), random(255));
  B = color (random(255), random(255), random(255));
  colorA=A;
  colorB=B;
}
void keyPressed() {

  if (keyCode == ENTER) {
    colorA=0;
    colorB=255;
  
  }
}
