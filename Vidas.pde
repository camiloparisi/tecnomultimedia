class Vidas {
  Obstaculo obstaculo;
  int cantVidas = 3;
  int posX, posY;
  int tam = width;
  Vidas() {
    posX = 70;
    posY = 100;
    obstaculo = new Obstaculo();
  }
  void dibujar() {
    textSize (30);
    noFill();
    text ("Vidas:" + (cantVidas), 90, 30);
    fill(255, 0, 0);
    obstaculo.dibujar();
  }
  void textoPerder() {
    if (cantVidas <= 0) {
      background (0); 
      fill(255, 0, 0);
      text("¡No has encontrado a tus amigos!", 200, 250); 
      text ("Presiona 's' para continuar sólo.", 200, 300);
      fill(0);
    }
  }
}
