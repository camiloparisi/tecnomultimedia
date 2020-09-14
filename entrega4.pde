int estado = 0;
int cantTextos = 5;
int cantImagenes = cantTextos;
PImage [] imagenes = new PImage [cantImagenes]; 
String [] textos = new String [cantTextos]; 
int imagenAleatoria;
int textoAleatorio;
int vidas =3;
int aciertos =0;

void setup() {
  size(600, 600);
  inicializarJuego();
}

void draw() {
  println(estado);
  contador();
  dibujarJuego();
}

void mouseClicked() {
if (estado==0){
  if (clickBotonOK()) {
    matchOK();
  } else if (clickBotonKO()) {
    matchKO();
  }
}
}
void keyPressed() {
  if (estado==1 || estado==2) {
    if (key == 'r' || key=='R') {
      inicializarJuego();
    }
  }
}
