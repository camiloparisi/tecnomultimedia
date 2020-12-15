class Contador {

  int contadorAciertos, contadorFallo ;
  Contador() {
    contadorAciertos=0;
    contadorFallo=0;
  }

  boolean haGanado() {
    return contadorAciertos == 8;
  }
}
