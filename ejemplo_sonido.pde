//Este mini juego reemplaza la PANTALLA 12

import processing.sound.*;
Juego juego;

void setup () {


  size (800, 600);
  juego = new Juego();
}

void draw () {
  background(200);
  juego.dibujar();
}


void keyPressed() {
  if (key == 'r' || key == 'R') {
    juego.teclaPresionada();
  }
}
