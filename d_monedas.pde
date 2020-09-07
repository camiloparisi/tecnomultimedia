void inicializarMonedas() {
  for (int cc = 0; cc < cantCaminos; cc++) {
    for (int ca = 0; ca < cantMonedas; ca++) {
      MONEDAS[cc][ca] = round(random(-2000 * (ca + 1), -2000 * ca));
    }
  }
}

void dibujarMonedas() {

  for (int cc = 0; cc < cantCaminos; cc++) {
    for (int ca = 0; ca < cantMonedas; ca++) {
      MONEDAS[cc][ca]+=2;
      imageMode(CORNER);
      image(coin, cc * tamX, MONEDAS[cc][ca], tamX, tamX);

      //COLISIÓN
      if (dist (cc*tamX, MONEDAS[cc][ca], posX, height-tamX) < tamX) {
        puntos = puntos +1;

        if (puntos > mejor_puntaje) {
          mejor_puntaje=mejor_puntaje+1;
        }
      }
    }
  }

  //CONTADOR DE PUNTOS
  fill(200);
  textAlign(LEFT);
  textSize(15);
  text("Puntos: " + (puntos) + "\nMejor puntaje: " + (mejor_puntaje), width/16, width/8);
}
