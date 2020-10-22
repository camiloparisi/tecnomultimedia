class Juego {
  PImage foto;
  color c[] = new color [3];
  PImage manzanaEstatica[] = new PImage [1];
  boolean choque;
  Jugador jugador; 
  Vidas vidas;
  Juego () {
    c[0] = (#00cd00);
    c[1] = (#ff0000);
    c[2] = (#000000);
    jugador = new Jugador();
    vidas = new Vidas();
    foto = loadImage ("foto.png");
  }
  void dibujar() {
    image (foto, 0, 0, width, height);
    jugador.dibujar();
    vidas.dibujar();
    ganaste();
    perdiste();
  }
  void mover() {
    jugador.mover();
  }
  void  perdiste() {
    if (get(jugador.PosX, jugador.PosY)>=c[0]) {
      choque = true;
      vidas.cantVidas = vidas.cantVidas -1;
      jugador.PosX = width/8;
      jugador.PosY = height/12;
    }
    for (int m=0; m <manzanaEstatica.length; m++) {
      if (get(jugador.PosX, jugador.PosY)==c[1]) {
        choque = true;
        vidas.cantVidas = vidas.cantVidas -1;
        jugador.PosX = width/8;
        jugador.PosY = height/12;
      }
    }
    
    vidas.textoPerder();
  }
  void ganaste() {
    if (get(jugador.PosX, jugador.PosY)==c[2]) {
      choque = true;
      background(0);
      fill(255, 0, 0);
      text("¡Mira a quienes encontraste! \n presiona 'c' para continuar", 200, 250);
    }
  }
}
