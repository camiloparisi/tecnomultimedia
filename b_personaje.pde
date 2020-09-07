void inicializarAutoPersonaje() {
  posX = 0;
}

void dibujarAutoPersonaje() {

  imageMode(CORNER);
  image(nave, posX, height-tamX, tamX, tamX);
}

void moverAutoPersonaje() {

  //¿Por qué no funcionan los límites del personaje?
  if (posX>0 || posX<= (width-width / cantCaminos));
  {
    if (keyCode == LEFT) {
      posX = posX - tamX;
    } else if (keyCode == RIGHT) {
      posX = posX + tamX;
    }
  }
}
