class Jugador {
  int posX, tam, posY, mouse_restriccion;

  Jugador(int p_tam, int p_posX) { 
    tam = p_tam; 
    posX = p_posX; 
    posY= width-tam;
  }

  boolean chocaCon(Notas notas) {
    if (dist(posX, mouseY, notas.posX, notas.posY)<=tam) {
      return true;
    }
    return false; 
  }

  void dibujar() {
    noCursor();
    noFill();
    if (mousePressed==true) {
      fill(255, 255, 153);
    }
    ellipseMode(CENTER);
    mouse_restriccion=constrain(mouseY, juego.posY, juego.posY+juego.tamY);
    ellipse(posX, mouse_restriccion, tam, tam);
  }
}
