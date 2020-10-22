class Obstaculo {
  //FOTOS
  PImage foto0;
  PImage manzanaEstatica[] = new PImage [1];
  PImage manzanaMov[] = new PImage [1];
  PImage arbol[] = new PImage [1];
  int cantH = 10;
  int tam, posX, posY, velocidad;
  int radio = 170;
  boolean choque;
  Obstaculo () {
    choque = false;
    for (int e=0; e <manzanaEstatica.length; e++) {
      manzanaEstatica[e]= loadImage ("manzana.png");
    }
    for (int m=0; m <manzanaMov.length; m++) {
      manzanaMov[m]= loadImage ("manzana.png");
    }
    for (int a=0; a <arbol.length; a++) {
      arbol[a]= loadImage ("foto0.png");
    }
    foto0 = loadImage("foto0.png");
    velocidad = 1;
    posX = 70;
    posY = 100;
    tam=10;
  }
  void dibujar () {
    image (arbol[0], -15, 20, width/7, height/5);
    image (arbol[0], 320, 180, width/10, height/8);
    image (arbol[0], 720, 40, width/7, height/5);
    image(arbol[0], 365, 410, width/10, height/8);
    noStroke();
    //manzanas estaticas
    image (manzanaEstatica[0], 20, 70, tam, tam);
    image(manzanaEstatica[0], 60, 70, tam, tam);
    image(manzanaEstatica[0], 45, 90, tam, tam);
    image(manzanaEstatica[0], 350, 200, tam, tam);
    image(manzanaEstatica[0], 360, 220, tam, tam);
    image(manzanaEstatica[0], 750, 100, tam, tam);
    image(manzanaEstatica[0], 780, 90, tam, tam);
    image(manzanaEstatica[0], 760, 60, tam, tam);
    //Manzanas con movimiento
    image (manzanaMov[0], posX+240, posY+100, tam, tam);
    image (manzanaMov[0], posX, posY-tam, tam, tam);
    image (manzanaMov[0], posX+640, posY-tam, tam, tam);
    image(manzanaMov[0], posX+350, posY+320, tam, tam);
    posY = posY + velocidad;
    if (posY > radio) {
      posY = 100;
    }
  }
}
