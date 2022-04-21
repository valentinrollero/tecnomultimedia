void setup() {
  size(700, 700);
  background(0, 0, 0);
  circle(350, 850, 800);
  rect(300, 180, 100, 170);
  triangle(300, 180, 400, 180, 344, 105 );
  triangle(300, 350, 300, 293, 227, 346);
  triangle(400, 350, 400, 293, 470, 352); 
  circle(348, 247, 90);
}

void draw() {
  println("X");
  println(mouseX);
  println("Y");
  println(mouseY);
}
