class Boton {

  String texto;
  int posX, posY, pantallaAIr;
  float tam;

  Boton(String p_texto, int p_posX, int p_posY, float p_tam, int p_pantallaAIr) {
    posX= p_posX;
    posY= p_posY;
    tam = p_tam;
    pantallaAIr = p_pantallaAIr;
    texto = p_texto;
  }


  void dibujar() {
    textSize(14); //texto proporcional al tamaño
    fill(200, 200, 200, 200);
    stroke(0);
    ellipse (posX, posY, tam, tam);
    textAlign(CENTER);
    fill(0);
    text(texto, posX, posY );
  }


  int mouseClicked() {
    if (dist (mouseX, mouseY, posX, posY)<tam/2) {
      return pantallaAIr;
    }
    return -1;
  }
}
