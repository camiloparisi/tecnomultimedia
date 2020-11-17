class Creditos {
  float posY;
  int posX;
  String texto;


  Creditos(String p_texto, int p_posX , float p_posY) {
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


  void reiniciarcreditos() {
      if (key == 'r' || key=='R') {
    posY = height + 50;
  }
}
}
