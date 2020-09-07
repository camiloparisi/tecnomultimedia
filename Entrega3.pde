import ddf.minim.*;

Minim audio;
AudioPlayer gameover;

int numFrames = 3;  // The number of frames in the animation
int currentFrame = 0;

PImage nave, coin, meteorito, fondo, perdiste;

int cantCaminos = 8;
int cantAutos = 500;
int cantMonedas =5;
int tamX, tamY, posX;
int estado;
//0=jugando (inicio)
//1=perder
int mejor_puntaje;
int puntos;

int [][] autosEnemigos = new int [cantCaminos][cantAutos];
int [][] MONEDAS = new int [cantCaminos][cantMonedas];


void setup() {
  size(800, 600);
  surface.setResizable(true);
  nave = loadImage("nave.png");  
  coin = loadImage("coin.png");  
  meteorito = loadImage("meteorito.png");  
  fondo = loadImage("0.png");  
  perdiste = loadImage("perdiste.png");

  audio = new Minim(this);
  gameover= audio.loadFile("crash.mp3");

  tamX = width / cantCaminos;
  tamY = height / 12;
  inicializar();
}

void draw() {

  background(0);
  imageMode(CENTER);
  image(fondo, width/2, height/2, width, height);
  
  
  if (jugando()) {
    dibujarAutosEnemigos();
    dibujarMonedas();
    dibujarAutoPersonaje();
  } else if (perdi()) {
    mensaje_perder();
  }
}

void keyPressed() {
  moverAutoPersonaje();

  if (estado==1) {
    if (key == 'r' || key == 'R') {
      inicializar();
    }
  }
}
