//Este mini juego reemplaza la PANTALLA 12

import processing.sound.*;
SoundFile flauta;
Juego juego;

void setup () {
  flauta = new SoundFile(this, "flauta.mp3");
  flauta.amp(0.1);
  flauta.loop();

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
