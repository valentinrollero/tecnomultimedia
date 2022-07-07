int posX, tam;
int contador = 0;
int techo = 0;
int cantidadObjetos = 10;
int [] objetosPosY = new int [cantidadObjetos];
int velocidad = 1;
PImage Fondo;
PImage canasta;
PImage persiana;
PImage manzana;
PImage fondo1;
int maxImages = 3;
int numImages = 1;

void setup(){
  size(400,400);
  textSize(20);
  Fondo = loadImage("fondo.jpg");
  canasta = loadImage("canasta.png");
  persiana = loadImage("persiana.png");
  manzana = loadImage("manzana.png");
  fondo1 = loadImage("fondo1.jpg");
  
  
  tam = width/cantidadObjetos;
  posX = tam * (cantidadObjetos/2);
  
  for(int i=0; i < cantidadObjetos ; i++ ){
    objetosPosY[i] = generarPosicionObjeto();
  }
}

void draw(){
 background(200);
  image(Fondo, 0, 0, 400, 400);
  if (numImages==1) {
  for(int i=0; i < cantidadObjetos ; i++ ){
    objetosPosY[i]+=velocidad;
    
    image (manzana,i*tam + tam/2, objetosPosY[i], tam/2, tam/2);
    
    if(objetosPosY[i] >= height ){
      objetosPosY[i] = generarPosicionObjeto();
      techo++;
    }
    
    if(dist(i*tam + tam/2, objetosPosY[i], posX + tam/2, width-tam + tam/2) < tam/2){
      objetosPosY[i] = generarPosicionObjeto();
      contador++;
      
      if(contador % 10 == 0){
        velocidad++;
      }
    }
  }
  
  
  
  fill(0,0,255);
  image(canasta,posX, width-tam, 65, 50);
  
  fill(0);
  image(persiana,0,0,width, techo * tam);
  
  fill(255,0,0);
  text("Contador:"+ contador, 0, 17);
  
} 
}


void keyPressed(){
  if(keyCode == LEFT){
    posX = posX - tam;
  }else if(keyCode == RIGHT){
    posX = posX + tam;
  }
}

int generarPosicionObjeto(){
  return round(random(-1000,techo * tam));
 
}


void mouseClicked() {
  if (mouseX>width*0.8) {
    numImages++;
    if (numImages == maxImages+1) {
      numImages=1;
    }
  } else if (mouseX<width*0.1) {
    numImages++;
    if (numImages ==0) {
      numImages=maxImages;
    }
  }
else if (numImages==2) {}
image(fondo1, 0, 0, 400, 400);

}
