AventuraGrafica aventuraGrafica;
import processing.sound.*;

void setup () {
  size (800, 600);
  aventuraGrafica = new AventuraGrafica(this);
}

void draw () {
  background(200);
  aventuraGrafica.dibujar();
}

void mousePressed() {
  aventuraGrafica.mousePressed();
}

void keyPressed() {
  aventuraGrafica.keyPressed();
}
