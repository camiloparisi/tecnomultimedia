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
    imageMode(CORNER);
    image(fondo, 0, 0, width, height);
    fill(0);
    textSize(24);

    if (creditos != null) {
      creditos.dibujar();
    }

    if (minijuego != null) {
      minijuego.dibujar();
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


  int mousePressed() {
    int pantallaAIr = -1;

    if (boton1 != null) {
      pantallaAIr = boton1.mousePressed();
    }

    if (boton2 != null && pantallaAIr==-1 ) {
      pantallaAIr = boton2.mousePressed();
    }
    return pantallaAIr;
  }
}
