class Notas {
  PImage nota;
  int  posX, posY, velocidad, tam, tipo;

  Notas(int  p_posX, int p_posY, int p_tam, int p_tipo) { 
    tipo = p_tipo;
    posX=p_posX;
    posY=p_posY;   
    velocidad=2;
    tam = p_tam;

    //Inicializo notas
    for (int i=1; i < 5; i++) { 
      if (tipo == i) {
        nota = loadImage(i+".png");
      }
    }
  }

  void dibujar() {  //Metodo paradibujar Notas
    fill(255, 0, 0);
    imageMode(CENTER);
    image(nota, posX, posY, tam, tam);
    posX-=velocidad;
  }

  void moverEnX(int p_posX) {
    posX=p_posX;
  }
}
