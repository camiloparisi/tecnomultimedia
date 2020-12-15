class Creditos {
  float posY;
  int posX, abajo, der;
  String texto;

  Creditos(String p_texto, int p_posX, float p_posY) {
    texto = p_texto;
    posY = p_posY;
    posX= p_posX;
  }

  void dibujar() {
    fill(255);
    textAlign(CENTER);
    text(texto, posX, posY);
    posY=posY-1;
  }

  void reiniciarcreditos(int p_abajo, int p_der) {
    abajo=p_abajo;
    der=p_der;
    if (dist (mouseX, mouseY, der, abajo)<(width/16+height/16)) {
      posY = height + 50;
    }
  }
}
