class Jugador {
  int posX, tam, posY, mouse_restriccion, juegotamY, juegoposY;

  Jugador(int p_tam, int p_posX, int p_juegoposY, int p_juegotamY) { 
    tam = p_tam; 
    posX = p_posX; 
    posY= width-tam;
    juegotamY =p_juegotamY;
    juegoposY=p_juegoposY;
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
    mouse_restriccion=constrain(mouseY, posY, posY+juegotamY);
    ellipse(posX, mouse_restriccion, tam, tam);
  }
}
