class AventuraGrafica {

  //ATRIBUTOS:
  Pantalla pantallaActual;
  Creditos creditos;
  SoundFile sonido, flauta;
  int cant_pantallas=19, medio= width/2, izq=width/4, der=width-width/4;
  int abajo=height-height/8;
  PFont fuente;
  PImage [] fondos = new PImage [cant_pantallas]; 
  Pantalla [] pantallas = new Pantalla [cant_pantallas];
  Texto textos = new Texto(cant_pantallas);
  Minijuego minijuego;
  int pantalla;

  //CONSTRUCTOR:
  AventuraGrafica(PApplet pro) {

    Boton boton1, boton2;
    inicializarfondos();
    sonido = new SoundFile(pro, "sonido.mp3");
    flauta = new SoundFile(pro, "flauta.mp3");
    sonido.amp(0.1);
    sonido.loop();
    pantallas = new Pantalla [cant_pantallas];
    fuente= loadFont("PlantagenetCherokee-40.vlw");
    textFont(fuente);

    //Creo la pantalla 0
    pantalla=0;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/12+height/12), 1);
    boton2= new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), der, abajo, width/8.5, 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 1
    pantalla = 1;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 2);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Creo la pantalla 2
    pantalla = 2;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 3);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Creo la pantalla 3
    pantalla = 3;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), izq, abajo, (width/12+height/12), 4);
    boton2= new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), der, abajo, (width/12+height/12), 6);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 4
    pantalla = 4;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 5);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Creo la pantalla 5
    pantalla = 4;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, creditos, null);

    //Creo la pantalla 6
    pantalla = 6;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 7);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Creo la pantalla 7
    pantalla = 7;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 8);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Creo la pantalla 8
    pantalla = 8;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 9);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Creo la pantalla 9
    pantalla = 9;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), izq, abajo, (width/16+height/16), 10);
    boton2= new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), der, abajo, (width/16+height/16), 11);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 10
    pantalla = 10;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, creditos, null);

    //Creo la pantalla 11
    pantalla = 11;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), izq, abajo, (width/12+height/12), 12);
    boton2= new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), der, abajo, (width/12+height/12), 16);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 12
    pantalla = 12;
    minijuego= new Minijuego(this, flauta);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], null, null, null, null, minijuego);

    //Creo la pantalla 13
    pantalla = 13;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), izq, abajo, (width/16+height/16), 14);
    boton2= new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), der, abajo, (width/16+height/16), 15);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 14
    pantalla = 14;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, creditos, null);

    //Creo la pantalla 15
    pantalla = 15;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, creditos, null);

    //Creo la pantalla 16
    pantalla = 16;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, creditos, null);

    //Creo la pantalla 17
    pantalla = 17;
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), medio, abajo, (width/16+height/16), 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, creditos, null);

    //Creo la pantalla 18
    pantalla=18;
    creditos = new Creditos(textos.getTextoParaPantalla(pantalla), medio, height+50);
    boton1= new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), der, abajo, (width/16+height/16), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], null, boton1, null, creditos, null);

    //Al terminar de crea las pantallas, determino por cuál comenzar
    pantallaActual = pantallas[0];
  }

  //FUNCIONES:
  void inicializarfondos() {
    for (int i=0; i<cant_pantallas; i++) {
      fondos[i] = loadImage(i + ".png");
    }
  }

  void dibujar() {
    pantallaActual.dibujar();
  }

  void mousePressed() {
    if (pantallaActual==pantallas[18]) {
      creditos.reiniciarcreditos(abajo, der);
    }
    
    int pantallaAIr = pantallaActual.mousePressed();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }
  }


  void keyPressed() {
    if (pantallaActual==pantallas[12]) {
      minijuego.keyPressed();
    }
  }
}
