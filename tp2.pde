//TITULOS ENTER THE VOID FILM
//PARISI CAMILO - COMISIÓN 4
//TECNOLOGÍA MULTIMEDIAL

PFont fuente1, fuente2, fuente3;
float posY1, CambioColor1, CambioColor2, CambioColor3, CentroX;
PImage img, end, edad;

void setup () {
  size (1280, 720);
  CentroX=width/2;
  fuente1 = loadFont("Agenda-Bold-48.vlw");
  fuente2 = loadFont("Tahoma-48.vlw");
  fuente3 = loadFont("Tahoma-Bold-48.vlw");
  posY1 = height + 100;
  CambioColor1=0;
  CambioColor2=120;
  CambioColor3=255;
  img=loadImage("enter the void.png");
  edad=loadImage("18.png");
  end=loadImage("end.png");
}


//Click para volver a comenzar
void mousePressed () {
  posY1=height + 100;
  CambioColor1=0;
  CambioColor2=120;
  CambioColor3=255;
}

  

void draw () {
  

  background (0);
  
  //CURSOR 
  noCursor();
  image(edad,mouseX,mouseY);
  edad.resize(30, 30);
  
  // Animación de colores del título
  CambioColor1 = CambioColor1 +0.5;
  CambioColor2 = CambioColor2 + 0.5;
  CambioColor3 = CambioColor3 - 0.15;

  //Título principal
  textFont(fuente1);
  fill(CambioColor3, CambioColor1, CambioColor2);
  textSize(130);
  textAlign(CENTER);
  text("ENTER THE VOID", CentroX, posY1);

  //Enter the void Japonés
  imageMode(CENTER);
  image(img, CentroX, 150+posY1);
  posY1=posY1-0.1;

  //Director
  textFont(fuente3);
  fill(255);
  textSize(30);
  text("DIRECTOR:", CentroX, posY1+400);
  textFont(fuente2);
  textSize(25);
  text("Gaspar Noé", CentroX, posY1+450);

  //Producción
  textFont(fuente3);
  fill(255);
  textSize(30);
  text("PRODUCCIÓN:", CentroX, posY1+600);
  textFont(fuente2);
  textSize(25);
  text("Olivier Delbosc \n Vincent Maraval \n Marc Missonnie \n Gaspar Noé", CentroX, posY1+650);

  //Guion
  textFont(fuente3);
  fill(255);
  textSize(30);
  text("GUION:", CentroX, posY1+900);
  textFont(fuente2);
  textSize(25);
  text("Gaspar Noé", CentroX, posY1+950);

  //Música
  textFont(fuente3);
  fill(255);
  textSize(30);
  text("MÚSICA:", CentroX, posY1+1100);
  textFont(fuente2);
  textSize(25);
  text("Thomas Bangalter", CentroX, posY1+1150);

  //Fotografía
  textFont(fuente3);
  fill(255);
  textSize(30);
  text("FOTOGRAFÍA:", CentroX, posY1+1300);
  textFont(fuente2);
  textSize(25);
  text("Benoît Debie", CentroX, posY1+1350);

  //Montaje
  textFont(fuente3);
  fill(255);
  textSize(30);
  text("MONTAJE:", CentroX, posY1+1500);
  textFont(fuente2);
  textSize(25);
  text("Marc Boucrot \n Gaspar Noé", CentroX, posY1+1550);

  //Protagonistas
  textFont(fuente3);
  fill(255);
  textSize(30);
  text("PROTAGONISTAS:", CentroX, posY1+1750);
  textFont(fuente2);
  textSize(25);
  text("Nathaniel Brown \n Paz de la Huerta \n Cyril Roy \n Emily Alyn Lind \n Jese Kuhn \n Olly Alexander \n Masato Tanno \n Ed Spear \n Sara Stockbridge", CentroX, posY1+1800);

  //Final
  imageMode(CENTER);
  image(end, CentroX, 2000+posY1);
  posY1=posY1-1.2;
}
