Juego juego;
void setup() {
  size (800, 600);
  juego = new Juego();
}
void draw() {
  background(0);
  juego.dibujar();
}
void keyPressed() {
  juego.mover();
  juego.perdiste();
}
