PImage destornillador;

void setup() {
  size(800,400);
  background(255);
  destornillador =loadImage("destornillador.jpg");
  destornillador.resize(470, 410);
  image(destornillador, 300, 1);
}

void draw() {
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);


  fill(100);
  rect(153, 241, 60, 155);

  fill(255);
  rect(158, 210, 50, 31);

  fill(100);
  rect(153, 195, 60, 28);

  fill(200);
  rect(172, 50, 17, 145);
  rect(169, 10, 23, 40);

  fill(249, 250, 73);
  rect(163, 241, 40, 155);

  fill(249, 250, 73);
  rect(163, 195, 40, 28);
}
