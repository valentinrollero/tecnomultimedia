PFont fuente;
PImage Fondo, Nombre, logo, logo02, Flechaizq, Flechader, logo01, mouse;
int TamanioText;
int maxImages = 4;
int numImages = 1;
int ejeY;
int anchoDer;
int largoDer;
int anchoIz;
int largoIz;




void setup() {
  anchoDer=1100;
  size(1200, 600);
  Fondo = loadImage("Fondo0"+numImages+".jpg");
  logo = loadImage("Fondo05.png");
  logo02=loadImage("logo02.png");
  fuente=createFont("Dark College.otf", 100);
  Flechaizq=loadImage("Flechaizq.png");
  Flechader=loadImage("Flechader.png");
  logo01=loadImage("logo01.png");


  ejeY=600;
  largoDer=100;
  anchoIz=100;
  largoIz=0;
}

void draw() {

  tint(150);
  image(Fondo, 0, 0, 1200, 600);

  if (numImages==1) {
    textFont(fuente);
    image(logo02, 160, 140, 220, 280);
    image(logo01, 300, 100, 100, 70);
    ejeY--;
  } else if (numImages==2) {
    image(logo, 116, ejeY-100, 500, 200);
    textSize(30);
    fill(255, 255, 255);
    text("Director", 116, ejeY+100);
    text("Neil Druckmann", 116, ejeY+125);
    text("Escritor", 116, ejeY+200);
    text("Neil Druckmann", 116, ejeY+225);
    text("Directorde Gameplay", 116, ejeY+300);
    text("Bruce Straley", 116, ejeY+325);
    text("Compositor", 116, ejeY+400);
    text("Gustavo Santaolalla", 116, ejeY+425);
    text("Platformas", 116, ejeY+500);
    text("PlayStation 3 y PlayStation 4", 116, ejeY+525);
    text("Fecha de lanzamiento", 116, ejeY+600);
    text("13 de Junio, 2013", 116, ejeY+625);
    text("Generos", 116, ejeY+700);
    text("Drama,Survival,Horror,Acción-Aventura", 116, ejeY+725);
    text("Modos", 116, ejeY+800);
    text("Un Jugador,Multijugador", 116, ejeY+825);
    text("Clasificaciónes", 116, ejeY+900);
    text("ESRB: M, PEGI: 18", 116, ejeY+925);
    text("Reparto Principal", 116, ejeY+1000);
    text("Ashley Johnson, Ellie)", 116, ejeY+1025);
    text("Troy Baker, Joel))", 116, ejeY+1050);

    ejeY--;
  } else if (numImages==3) {

    textSize(30);
    fill(255, 255, 255);
    text("Joel Miller es el protagonista jugable de The Last of Us", 116, ejeY+100);
    text("y un personaje secundario en The Last of Us: Left Behind y ", 116, ejeY+150);
    text("The Last of Us Part II,en el que se puede jugar brevemente.", 116, ejeY+200);
    text(" Joel era un sobreviviente en la América postapocalíptica ", 116, ejeY+250);
    text("que había sido devastada por la infección cerebral Cordyceps.", 116, ejeY+300);
    ejeY--;
  } else if (numImages==4) {
    textSize(30);
    fill(255, 255, 255);

    text("Ellie es el personaje principal de la saga The Last of Us", 102, ejeY+100);
    text("Es la deuteragonista de The Last of Us y la protagonista jugable", 102, ejeY+150);
    text("de The Last of Us: Left Behind y The Last of Us: Parte II", 102, ejeY+200);
    text("y el personaje principal de The Last of Us: American Dreams.", 102, ejeY+250);
    ejeY--;


    println("X");
    println(mouseX);
    println("Y");
    println(mouseY);
  }
  fill(255, 255, 255, 50);
  rect(anchoDer, -1, largoDer, 650);
  fill(255, 255, 255, 50);
  rect(0, 0, anchoIz, 650);
  image(Flechaizq, 0, 270, 70, 100);
  image(Flechader, 1130, 270, 70, 100);

  if (ejeY<=-1200) {
    ejeY=height+10;

  }


  println("X");
  println(mouseX);
  println("Y");
  println(mouseY);

  if (mouseX > 1100 && mouseX < 1200 && mouseY > 0 && mouseY < 650) {
    anchoDer=1090;
    largoDer=200;
  } else {
    anchoDer=1100;
    largoDer=100;
  }

  if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 650) {
    anchoIz=110;
  } else {
    anchoIz=100;
  }
}
void mouseClicked() {
  if (mouseX>width*0.8) {
    numImages++;
    if (numImages == maxImages+1) {
      numImages=1;
    }
  } else if (mouseX<width*0.1) {
    numImages--;
    if (numImages ==0) {
      numImages=maxImages;
    }
  }



  Fondo = loadImage("Fondo0"+numImages+".jpg");
}
