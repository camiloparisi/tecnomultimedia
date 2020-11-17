class Minijuego {
  PFont fuente;
  PImage fondo;
  int posX=width/4, posY=height/4, tamX=width/2, tamY=height/2;
  int cantidadNotas = 10;
  int renglones= 5; //RENGLONES DEL PENTAGRAMA 
  int tam= tamY/cantidadNotas;
  int estado;

  Jugador jugador; 
  Notas [] notas = new Notas[cantidadNotas]; 
  Contador contador;

  Minijuego() {
   
    inicializar();
  }

  void dibujoMinijuego() {

    dibujarNotas();
    dibujarFondo(height-height/8);
    jugador.dibujar();
    controlarGanarOPerder();
  }

  void inicializar() {


    fuente= loadFont("PlantagenetCherokee-40.vlw");
    textFont(fuente);
    textAlign(CENTER);
    textSize(20);
    fondo = loadImage("fondo.png");  
    jugador = new Jugador(tam, posX, posY, tamY);
    contador =new  Contador(); 
    estado=1; //Estado cuando inicializa el minijuego

    for (int i=0; i < cantidadNotas; i++) { 
      int tipoNota = floor(random(1, 5));
      notas[i]=new Notas(generarPosicionNotas(), posY + i*tam + tam/2, tam*2, tipoNota ); //Formación inicial de las notas
    }
  }

  void controlarGanarOPerder() {
    if (contador.haGanado()) {
      estado = 2;
    } else if (contador.contadorFallo==1) {
      estado = 3;
    }
  }

  void dibujarNotas() {
    for (int i=0; i < cantidadNotas; i++) {
      notas[i].dibujar();
      if (mousePressed==true) {
        //Condición para  contar aciertos
        if (jugador.chocaCon(notas[i])) {
          notas[i].moverEnX(generarPosicionNotas());
          contador.contadorAciertos++;
        }
      }
      //Condición para contar fallo
      if (notas[i].posX <(posX-tam)) {
        contador.contadorFallo=1;
      }
    }
  }

  int generarPosicionNotas() {
    return round(random(width, width*4));
  }

  void dibujar() {
    if (estado == 1) {
      dibujoMinijuego();
    } else if (estado == 2) {
      dibujoFin("¡Bien! Los niños se adentraron en\n el bosque siguiendo la melodía.\nNi elos ni el flautista regresaron..", color(50, 200, 50));
      println("PASA A PANTALLA 13");
    } else if (estado == 3) {
      dibujoFin("¡Desafinaste!\n (Presiona R para volver a intentarlo)", color(255, 0, 0));
    }
  }

  void dibujoPantallaInicio() {
    fill(0);
    text("Presiona una Tecla para iniciar", width/2, height/2);
  }

  void dibujoPasarPantalla() {
    text("PASA A SIGUIENTE PANTALLA", width/2, height/2);
  }

  void dibujoFin(String p_mensaje, color p_color) {
    background(p_color);
    image(fondo, width/2, height/2, width, height);
    fill(0);
    text(p_mensaje, width/2, height/2);
  }

  void dibujarFondo(int p_posYmensaje) {
    image(fondo, width/2, height/2, width, height);
    for (int i=1; i <= renglones; i++) { 
      line(posX, posY+i*(tamY/6), posX+tamX, posY+i*(tamY/6));
    }
    fill(255, 200);
    rect(posX, p_posYmensaje-p_posYmensaje/25, tamX, 60, 5);
    fill(0);
    text("Toca perfectamente la melodía para\nque los niños sigan al flautista.", width/2, p_posYmensaje);
  }

  void teclaPresionada() {
    if (estado == 3) {
      inicializar();
    } else if (estado == 1) {
      inicializar();
    }
  }
}
