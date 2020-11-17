//falta creditos, juego, keypressed

class Pantalla {
  //ATRIBUTOS:
  Texto[] textos;

  PImage fondo;   
  String textoPantalla; 
  int abajo, medio, izq, der, pantalla, pantallaAIr;
  Boton boton1; 
  Boton boton2;
  Creditos creditos;
  Minijuego minijuego;


  //CONSTRUCTOR:
  Pantalla(PImage p_fondo, String p_textoPantalla, Boton p_boton1, Boton p_boton2, Creditos p_creditos, Minijuego p_minijuego) {
    fondo = p_fondo;
    textoPantalla=p_textoPantalla;
    boton1=p_boton1;
    boton2=p_boton2;
    creditos=p_creditos;
    minijuego=p_minijuego;
  }

  //FUNCIONES:
  void dibujar() {
    image(fondo, 0, 0, width, height);

    if (creditos== null) {
      noStroke();
      rectMode(CENTER);
      fill(255, 255, 255, 100);
      rect(width/2, height/2.2, width/2, height/3);
    }
    fill(0);
    textSize(20);

    if (creditos != null) {
      creditos.dibujar();
    }

    if (minijuego != null) {
      juego.dibujar();
    }


    if (textoPantalla != null) {
      textAlign(CENTER);
      text(textoPantalla, width/2, height/3);
    }

    if (boton1 != null) {
      boton1.dibujar();
    }

    if (boton2 != null) {
      boton2.dibujar();
    }
  }


  int mouseClicked() {
    int pantallaAIr = -1;
    if (minijuego != null)
      juego.mouseClicked();

    if (boton1 != null) {
      pantallaAIr = boton1.mouseClicked();
    }

    if (boton2 != null && pantallaAIr == -1) {
      pantallaAIr = boton2.mouseClicked();
    }
    return pantallaAIr;
  }

  void keyPressed() {
    if (minijuego != null)
      juego.keyPressed();
  }
}
