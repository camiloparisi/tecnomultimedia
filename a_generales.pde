boolean jugando() {
  return (estado == 0);
}

boolean perdi() {
  return estado == 1;
}


void inicializar() {
  estado = 0;
  puntos=0;

  inicializarAutosEnemigos();
  inicializarMonedas();
  inicializarAutoPersonaje();
}
