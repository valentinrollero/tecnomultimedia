/*
valentin rollero
89551/0
https://www.youtube.com/watch?v=i2LOF9Fyeko
*/

int posX, tam;
int contador = 0;
int techo = 0;
int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
int velocidad = 1;
PFont fuente;
PImage Fondo,canasta,persiana,manzana,fondo1,fondo2;
int pantalla = 0;

void setup() {
  size(400, 400);
  textSize(20);
  Fondo = loadImage("fondo.jpg");
  canasta = loadImage("canasta.png");
  persiana = loadImage("persiana.png");
  manzana = loadImage("manzana.png");
  fondo1 = loadImage("fondo1.jpg");
  fondo2=loadImage("fondo2.jpg");
  fuente=createFont("Dark College.otf", 100);

  tam = width/cantidadObjetos;
  posX = tam * (cantidadObjetos/2);

  for (int i=0; i < cantidadObjetos; i++ ) {
    objetosPosY[i] = generarPosicionObjeto();
  }
}

void draw() {

  if (pantalla == 0) {
    background(0);
    image(fondo1, 0, 0, 400, 400);
    rectMode(CENTER);
    botones(width/2, height/2, 100, 50);
    textMode(CENTER); 
    texto("JUGAR", 155, height/2, 29, 0);
  }

  if (pantalla == 1) {
    background(200);
    image(Fondo, 0, 0, 400, 400);
    for (int i=0; i < cantidadObjetos; i++ ) {
      objetosPosY[i]+=velocidad;

      image (manzana, i*tam + tam/2, objetosPosY[i], tam/2, tam/2);

      if (objetosPosY[i] >= height ) {
        objetosPosY[i] = generarPosicionObjeto();
        techo++;
      }

      if (dist(i*tam + tam/2, objetosPosY[i], posX + tam/2, width-tam + tam/2) < tam/2) {
        objetosPosY[i] = generarPosicionObjeto();
        contador++;

        if (contador % 10 == 0) {
          velocidad++;
        }
      }
    }



    fill(0, 0, 255);
    image(canasta, posX, width-tam, 65, 50);

    if (techo*tam > height*2) {
      pantalla = 2;
      techo = 0;
    } else {
      fill(0);
      image(persiana, 0, 0, width, techo * tam);
    }



    texto("contador:"+ contador, 10, 25, 30, 0);
  }

  if (pantalla == 2) {
    background(0);
    image(fondo2, 0, 0, 400, 400);
    rectMode(CENTER);
    botones(width/2, height/2, 100, 50);
    botones(width/2, 300, 150, 50);
    textMode(CENTER);  
    texto("reiniciar", 160, height/2, 18, 0);
    texto("menu principal", 130, 300, 18, 0);
  }
}


void keyPressed() {
  if (keyCode == LEFT) {
    posX = posX - tam;
  } else if (keyCode == RIGHT) {
    posX = posX + tam;
  }
}

int generarPosicionObjeto() {
  return round(random(-1000, techo * tam));
}


void mouseClicked() {
  if (mouseX > 150 && mouseX < 250 && mouseY > 175 && mouseY < 225 && pantalla == 0) {
    pantalla = 1;
  }
  if (mouseX > 150 && mouseX < 250 && mouseY > 175 && mouseY < 225 && pantalla == 2) {
    pantalla = 1;
  }
  rect(width/2, 300, 150, 50);
  if (mouseX > 125 && mouseX < 275 && mouseY > 275 && mouseY < 325 && pantalla == 2) {
    pantalla = 0;
  }
}
