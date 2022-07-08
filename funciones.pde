void botones(int ejeX, int ejeY, int tamX, int tamY) {
  fill(255);
  rect(ejeX, ejeY, tamX, tamY);
}
void texto(String tex, int ejeX, int ejeY,int tamTex, int Color) {
  textMode(CENTER);
  fill(Color);
  textFont(fuente);
  textSize(tamTex);
  text(tex, ejeX, ejeY);
}
