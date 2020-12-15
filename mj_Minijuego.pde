class Minijuego {

  PImage fondo;
  SoundFile flauta;
  int posX=width/4, posY=height/4, tamX=width/2, tamY=height/2;
  int cantidadNotas = 10;
  int renglones= 5; //RENGLONES DEL PENTAGRAMA 
  int tam= tamY/cantidadNotas;
  int estado;
  AventuraGrafica juego;
  Jugador jugador; 
  Notas [] notas = new Notas[cantidadNotas]; 
  Contador contador;

  Minijuego(AventuraGrafica p_juego, SoundFile p_flauta) {
    juego=p_juego;
    flauta=p_flauta;
    inicializar();
  }

  void inicializar() {

    textAlign(CENTER);
    textSize(20);
    fondo = loadImage("fondo.png");  
    jugador = new Jugador(tam, posX, posY, tamY);
    contador =new  Contador(); 
    estado=0; //Estado cuando inicializa el minijuego


    for (int i=0; i < cantidadNotas; i++) { 
      int tipoNota = floor(random(1, 5));
      notas[i]=new Notas(generarPosicionNotas(), posY + i*tam + tam/2, tam*2, tipoNota); //Formación inicial de las notas
    }
  }

  void dibujoMinijuego() {
    dibujarNotas();
    dibujarFondo(height-height/8);
    jugador.dibujar();
    controlarGanarOPerder();
    println(estado);
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

      //Condición para  contar aciertos
      if (mousePressed==true) {

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
    if (estado==0) {
      dibujoInicio("Presiona la tecla C  para comenzar", color(200));
    }
    if (estado == 1) {
      background(200);
      dibujoMinijuego();
    } else if (estado == 2) {
      cursor(); //vuelvo a dibujar cursor
      dibujoFin("¡Bien! Los niños se adentraron en\n el bosque siguiendo la melodía.\nNi elos ni el flautista regresaron..\nPresiona C para continuar", color(50, 200, 50));
    } else if (estado == 3) {
      cursor();
      dibujoFin("¡Desafinaste!\n Pero tu melodía llamó la atención\n de los adultos y los atrajo!\nPresiona C para continuar", color(255, 0, 0));
    }
  }


  void dibujoPasarPantalla() {
    text("PASA A SIGUIENTE PANTALLA", width/2, height/2);
  }

  void dibujoFin(String p_mensaje, color p_color) {
    background(p_color);
    imageMode(CORNER);
    image(fondo, 0, 0, width, height);
    text(p_mensaje, width/2, height/2);
  }

  void dibujoInicio(String p_mensaje, color p_color) {
    background(p_color);
    imageMode(CORNER);
    image(fondo, 0, 0, width, height);
    text(p_mensaje, width/2, height/2);
  }

  void dibujarFondo(int p_posYmensaje) {
    imageMode(CORNER);
    image(fondo, 0, 0, width, height);
    for (int i=1; i <= renglones; i++) { 
      line(posX, posY+i*(tamY/6), posX+tamX, posY+i*(tamY/6));
    }
    fill(255, 200);
    rect(posX, p_posYmensaje-p_posYmensaje/25, tamX, 60, 5);
    fill(0);
    text("Toca perfectamente la melodía para\nque los niños sigan al flautista.", width/2, p_posYmensaje);
  }


  void keyPressed() {

    if (key == 'c' || key == 'C') {
      if (estado==0) {
        background(200);
        estado=1;
        flauta.loop();
        flauta.amp(0.1);
      }
      if (estado==3) {
        flauta.stop();
        juego.pantallaActual=juego.pantallas[16];
        inicializar();
      } else if (estado==2) {
        flauta.stop();
        juego.pantallaActual=juego.pantallas[13];
        inicializar();
      }
    }
  }
}
