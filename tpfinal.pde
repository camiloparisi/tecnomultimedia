Juego juego;
import processing.sound.*;

void setup () {
  size (800  , 600);
  juego = new Juego(this);
}

void draw () {
  background(200);
  juego.dibujar();
}

void mouseClicked() {
  juego.mouseClicked();
}

void keyPressed(){
  juego.keyPressed();
}
