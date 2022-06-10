void dibujarcuadrado(int cantidad){
 for (int i=0; i<cantidad; i++) {
    int tam = width - (i * 40);
    if (i%2 == 0) {
      fill(colorA);
    } else {
      fill(colorB);
    }

    int posX = i * round(map(mouseX, 0, width, -10, 10));
    int posY = i * round(map(mouseY, 0, height, -10, 10));
    rectMode(CENTER);
    rect( width/2 + posX, height/2 + posY, tam, tam); 
}
}
