int pantalla;
int cant_pantallas=19;
PFont fuente1, fuente2;
PImage [] img = new PImage [cant_pantallas]; 
String [] textos = new String [cant_pantallas];
int [][][] bot = new int[cant_pantallas][3][3];

int medio, izq, der, abajo; //para botones
float posY; //para creditos


void setup () {
  size (1024, 768); 
  inicializar();
}

void draw () {

  for (int i=0; i<cant_pantallas; i++) {
    prepantalla(i);
  }
}


void mouseClicked() {
  botones();
}


void keyPressed() {
  //Volver al inicio al apretar cualquier tecla


  if (key == 'r' || key=='R') {
    pantalla=0;
    posY = height + 100;
  } else if ((pantalla==0)&&(key == 'c' || key=='C')) {
    pantalla=18;
  }
}
