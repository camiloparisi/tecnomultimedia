import ddf.minim.*;
Minim audio;
AudioPlayer win;
AudioPlayer gameover;
PImage fondo;
int cantH = 10;
int tam;
int [] posX = new int [cantH]; // Posiciones en X de cada ellipse
int [] dirX = new int [cantH]; // Direcciones en X de cada ellipse
int personajePosX, personajePosY;
int Puntos = 0;
int cant_vidas = 3;
int vidas = 0; 

void setup() {
  size(500, 500);
  imageMode(CENTER);
  fondo=loadImage("fondo.png");
  audio = new Minim(this);
  win= audio.loadFile("win.mp3");
  gameover= audio.loadFile("gameover.mov");
  tam = height/cantH;

  surface.setResizable(true);

  textSize(20);

  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posX[h] = round(random(tam, width-tam));
    //Genero aleatoriamente la dirección
    if (random(0, width)>width/2)
      dirX[h] = 1;
    else
      dirX[h] = -1;
  }

  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = height - tam/2;
}

void draw() {  
  tam = height/cantH;
  image(fondo, width/2, height/2);
  fondo.resize(width, height);

  //No calculo la última fila, que es donde arranca el personaje 
  for (int h=0; h < cantH-1; h++) { 
    fill(255-h*20); 
    ellipse(posX[h], h*tam + tam/2, tam, tam); 
    //Calculo la nueva posición 
    posX[h] = posX[h] + dirX[h]; 

    //Colisión
    if (dist(posX[h], h*tam + tam/2, personajePosX, personajePosY)<=tam-1) { 
      personajePosY = height - tam/2; 
      vidas = 0;
      vidas = vidas + 1; 
      cant_vidas = cant_vidas - vidas;
    }
    
    //Restart
    if (cant_vidas <= 0) {
      textAlign(CENTER, CENTER);
      background (255, 0, 0); 
      fill(0);
      gameover.play();
      text (("¡Perdiste! \n Haz click para volver a jugar."), width/2, height/2);
      fill(0);
    }  
    
    //Puntos     
    if (personajePosX<=width/2 && personajePosY<=1) {
      Puntos= Puntos+1;
      personajePosY = height - tam/2;
    }
    if (Puntos==3) {
      background (0, 200, 0); 
      textAlign(CENTER, CENTER);
      fill(0); 
      win.play();
      text(("¡Ganaste! \n Haz click para volver a jugar."), width/2, height/2); 
      fill(0);
    }


    //Vidas
    fill (0, 255, 0);
    textAlign (LEFT);
    fill(200);
    text("Vidas:" + (cant_vidas), width/16, width/8);
    {
      fill (200);
      textAlign (LEFT);
      text("Puntos:" + (Puntos), width/16, width/16);
      fill(255,0,0);
      ellipse(personajePosX, personajePosY, tam, tam);
      noFill();
    }
    //Si toca algún borde, cambia la dirección
    if (posX[h] < tam/2 || posX[h] > width-tam/2) {
      dirX[h] = dirX[h] * -1;
    }
  }
}

void keyPressed() {
  //Controlo el personaje arriba y abajo
  if (keyCode == UP) {
    personajePosY = personajePosY - tam;
  } else if (keyCode == DOWN) {
    personajePosY = personajePosY + tam;
  }
}


//volver a empezar
void mousePressed () {
  background (200); 
  personajePosX = width/2; 
  personajePosY = height - tam/2; 
  vidas = 0; 
  cant_vidas = 3; 
  Puntos = 0;
}
