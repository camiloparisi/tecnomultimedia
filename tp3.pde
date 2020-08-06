int pantalla;
float posY;
PImage img0, img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17;
PFont fuente1, fuente2;

void setup () {
  size (800, 600);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);

  posY = height + 100;

  fuente1 = loadFont("Apple-Chancery-48.vlw");
  fuente2 = loadFont("ArialNarrow-48.vlw");


  img0=loadImage("0.jpg");
  img1=loadImage("1.jpg");
  img2=loadImage("2.jpg");
  img3=loadImage("3.jpg");
  img4=loadImage("4.jpg");
  img5=loadImage("5.jpg");
  img6=loadImage("6.jpg");
  img7=loadImage("7.jpg");
  img8=loadImage("8.jpg");
  img9=loadImage("9.jpg");
  img10=loadImage("10.jpg");
  img11=loadImage("11.jpg");
  img12=loadImage("12.jpg");
  img13=loadImage("13.jpg");
  img14=loadImage("14.jpg");
  img15=loadImage("15.jpg");
  img16=loadImage("16.jpg");
  img17=loadImage("17.jpg");

  pantalla = 0;
}

void draw () {

  if (pantalla == 0) {

    image(img0, width/2, height/2);
    img0.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    fill(0);
    textFont(fuente1);
    textSize(70);
    text("El flautista de Hamelín", width/2, height/8);
    textSize(40);
    fill(150, 0, 0);
    text("¡Bienvenidos a la aventura! \n ¡Tu mismo irás eligiendo la historia! \n Si quieres volver a comenzar, \n solo debes presionar cualquier tecla.", width/2, height/2);
    textFont(fuente2);
    textSize(18);
    text("¡Comenzar!", width/2, height-height/8);
    
    // botón creditos:
    fill(200,200,200,200);
    rectMode(CENTER);
    rect(width-width/8,height-height/8,100,50, 5);
    fill(0);
    text("Créditos",width-width/8,height-height/8);
    
    
  } else if (pantalla==1) {
    image(img1, width/2, height/2);
    img1.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    fill(0);
    textFont(fuente1);
    textSize(40);
    text("En el pueblo de Hamelín, \n sus habitantes pescaban y \n se bañaban en el río y \n cultivaban sus propios alimentos", width/2,height/2);
    
    textFont(fuente2);
    textSize(18);
        fill(150, 0, 0);
    text("¡Siguiente!", width/2, height-height/8);
    
  } else if (pantalla==2) {
    image(img2, width/2, height/2);
    img2.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("Los habitantes se levantaron por \n la mañana y vieron todos estos \n ratones, preocupados, corrieron por \n todos lados y  entraron en pánico, \n preocupados porque los ratones \n se iban a comer su trigo", width/2, height/2.2);
    textFont(fuente2);
    textSize(18);
    fill(150, 0, 0);
    text("¡Siguiente!", width/2, height-height/8);
    
    
  } else if (pantalla==3) {
    image(img3, width/2, height/2);
    img3.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/4, height-height/8, 150, 150);
    ellipse (width-width/4, height-height/8, 150, 150);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("El pueblo se reúne para decidir \n qué hacer al respecto. Por lo que el \n alcalde llame a una votación:", width/2, height/4);
 
    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("Adaptarse a \n vivir con los ratones", width/4, height-height/8);
    text("Recompensar a \n quien los elimine", width-width/4, height-height/8);
    
    
  } else if (pantalla==4) {
    image(img4, width/2, height/2);
    img4.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("¡El pueblo alza sus manos y decide \n intentar adaptarse y convivir \n con los ratones!", width/2, height/2);

    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("¡Siguiente!", width/2, height-height/8);
    
    
  } else if (pantalla==5) {
    image(img5, width/2, height/2);
    img5.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("Los ratones se convirtieron en una \n plaga tan grande que comieron \n todo el trigo del campo y todo lo \n comestible del pueblo. El pueblo \n desaparece, la gente decidió mudarse.", width/2, height/2);

    
    fill(150, 0, 0);
    textFont(fuente1);
    textSize(35);
    text("¡Fin!", width/2, height-height/8);
    
  } else if (pantalla==6) {
    image(img6, width/2, height/2);
    img6.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("El pueblo alza sus manos y decide \n recompensar con un saco de monedas \n de oro a quien extermine los ratones", width/2, height/2);

    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("¡Siguiente!", width/2, height-height/8);
    
    
  } else if (pantalla==7) {
    image(img7, width/2, height/2);
    img7.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("Un joven comenzó a tocar la \n flauta, su melodía atrajo a los \n ratones y lo siguieron, atravesaron \n montañaas y los ratones \n desaparecieron por siempre", width/2, height/2);

    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("¡Siguiente!", width/2, height-height/8);
    
  } else if (pantalla==8) {
    image(img8, width/2, height/2);
    img8.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("Todos estaban felices, por lo que \n decidieron organizar una fiesta \n para celebrar que ya  no había ratones", width/2, height/2);

    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("¡Siguiente!", width/2, height-height/8);
    
    
  } else if (pantalla==9) {
    image(img9, width/2, height/2);
    img9.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/4, height-height/8, 100, 100);
    ellipse (width-width/4, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("El joven decide regresar y buscar \n al alcalde, cuando lo encuentra \n le reclama su oro...", width/2, height/2.2);
  
      fill(150, 0, 0); 
    text("¿Desea pagarle al flaustista?", width/2, height-height/3);
    
    textFont(fuente1);
 
    textFont(fuente2);
    textSize(35);
    text("Si", width/4, height-height/8);
    text("No", width-width/4, height-height/8);
    fill(200);

    
  } else if (pantalla==10) {
    image(img10, width/2, height/2);
    img10.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("¡El flautista se retira contento con \n su oro y el pueblo queda muy contento con el!", width/2, height/2.2);
  
    
    fill(150, 0, 0);
    textSize(35);
    text("¡Fin!", width/2, height-height/8);
    
    
  } else if (pantalla==11) {
    image(img11, width/2, height/2);
    img11.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/4, height-height/8, 150, 150);
    ellipse (width-width/4, height-height/8, 150, 150);

  textFont(fuente1);
    textSize(40);
    fill(0);
    text("El flautista, enojado, decide vengarse \n tocando una nueva melodía \n en la plaza principal", width/2, height/2.2);
  
  
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("Una irresistible \n para los niños", width/4, height-height/8);
    text("Una irresistible \n para los adultos", width-width/4, height-height/8);
   
    textFont(fuente1);
    textSize(35);
    text("¿Qué melodía deseas que toque?", width/2, height-height/3);
    
  } else if (pantalla==12) {
    image(img12, width/2, height/2);
    img12.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
    textFont(fuente1);
    textSize(40);
    fill(0);
    text("El joven flautista toca una nueva melodía \n en su flauta, los niños lo siguen y \n el se aleja hacia el bosque. Los niños \n desaparecen y el nunca más regresa", width/2, height/2.2);
  
    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("¡Siguiente!", width/2, height-height/8);
    
    
  } else if (pantalla==13) {
    image(img13, width/2, height/2);
    img13.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/4, height-height/8, 100, 100);
    ellipse (width-width/4, height-height/8, 100, 100);
    
     textFont(fuente1);
    textSize(40);
    fill(0);
    text("El pueblo busca desesperado \n a los niños", width/2, height/2.4);
  
    
    fill(150, 0, 0);

    textSize(35);
 
    text("¿Quieres que devuelva los niños?", width/2, height-height/3);
        textFont(fuente2);
   text("Si", width/4, height-height/8);
    text("No", width-width/4, height-height/8);

} else if (pantalla==14) {
    image(img14, width/2, height/2);
    img14.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
     textFont(fuente1);
    textSize(30);
    fill(0);
    text("El alcalde le pide disculpas, dice haber aprendido \n la lección y sentirse muy arrepentido. \n El flautista acepta  sus moendas y sus palabras, \n por lo que esta vez toca una nueva melodía \n que atrajo a todos los niños sanos  y salvos \n a la plaza principal. El pueblo, el alcalde \n y el flautista  quedaron muy conformes", width/2, height/2.4);
  
    
    fill(150, 0, 0);
    textSize(35);
    text("¡Fin!", width/2, height-height/8);
    
    
  } else if (pantalla==15) {
    image(img15, width/2, height/2);
    img15.resize(width, height);
    fill(200);
    ellipse (width/2, height-height/8, 100, 100);
    
     textFont(fuente1);
    textSize(30);
    fill(0);
    text("El flautista dijo ''tienes que \n aprender a hacer valer tu palabra, \n y en esto no hay segundas oportunidades, \n ahora deberán vivir en un \n pueblo sombrío y sin risas'' ", width/2, height/2);
  
    
    fill(150, 0, 0);
    textFont(fuente1);
    textSize(35);
    text("¡Fin!", width/2, height-height/8);
    
    
  } else if (pantalla==16) {
    image(img16, width/2, height/2);
    img16.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
      textFont(fuente1);
    textSize(30);
    fill(0);
    text("El joven toca una nueva melodía en su \n flauta, los adultos lo siguen y el se aleja \n hacia el bosque. Los adultos desaparecen \n y nunca más regresan...", width/2, height/2.4);
  
    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("¡Siguiente!", width/2, height-height/8);
    
  } else if (pantalla==17) {
    image(img17, width/2, height/2);
    img17.resize(width, height);
    fill(200, 200, 200, 200);
    ellipse (width/2, height-height/8, 100, 100);
    
      textFont(fuente1);
    textSize(30);
    fill(0);
    text("¡El pueblo, sin ratones ni adultos avaros \n y codiciosos, organiza una fiesta y están \n todos  muy contentos!", width/2, height/2.4);
  
    
    fill(150, 0, 0);
    textFont(fuente2);
    textSize(18);
    text("¡Fin!", width/2, height-height/8);

    //CREDITOS
  } else if (pantalla==18) {
    background (0);
    textFont(fuente2);
    textSize(30);
    fill(255);
    text("CREDITOS: \n \n Fabula original: Hermanos Grimm \n Ilustraciones: Kids Hut \n Adaptación: Parisi Camilo (85164/4) \n Cátedra: Tecnología Multimedial 1 \n Universidad Nacional de La Plata \n \n Agosto 2020", width/2, posY);
    posY=posY-1;
  }
}


void mouseClicked () {

  //if (pantalla > 0 && (mouseX > 20) && (mouseX < 30) && (mouseY > 550) && (mouseY<580)) {
  //  pantalla--;
  //}


  if (pantalla == 0 && (mouseX>(width-width/8)-50 && mouseX<(width-width/8)+50 && mouseY>(height-height/8)-25 && mouseY<(height-height/8)+25)) {
    pantalla = 18;
  } else if (pantalla == 0 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 1;
  } else if (pantalla == 1 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 2;
  } else if (pantalla == 2 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 3;
  } else if (pantalla == 3 && dist(mouseX, mouseY, width/4, height-height/8)<75) {
    pantalla = 4;
  } else if (pantalla == 3 && dist(mouseX, mouseY, width-width/4, height-height/8)<75) {
    pantalla = 6;
  } else if (pantalla == 4 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 5;
  } else if (pantalla == 5 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 18;
  } else if (pantalla == 6 && dist(mouseX, mouseY, width/2, height-height/8)<100) {
    pantalla = 7;
  } else if (pantalla == 7 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 8;
  } else if (pantalla == 8 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 9;
  } else if (pantalla == 9 && dist(mouseX, mouseY, width/4, height-height/8)<50) {
    pantalla = 10;
  } else if (pantalla == 9 && dist(mouseX, mouseY, width-width/4, height-height/8)<50) {
    pantalla = 11;
  } else if (pantalla == 10 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 18;
  } else if (pantalla == 11 && dist(mouseX, mouseY, width/4, height-height/8)<75) {
    pantalla = 12;
  } else if (pantalla == 12 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 13;
  } else if (pantalla == 13 && dist(mouseX, mouseY, width/4, height-height/8)<50) {
    pantalla = 14;
  } else if (pantalla == 13 && dist(mouseX, mouseY, width-width/4, height-height/8)<50) {
    pantalla = 15;
  } else if (pantalla == 14 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 18;
  } else if (pantalla == 15 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 18;
  } else if (pantalla == 11 && dist(mouseX, mouseY,width-width/4 , height-height/8)<75) {
    pantalla = 16;
  } else if (pantalla == 16 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 17;
  } else if (pantalla == 17 && dist(mouseX, mouseY, width/2, height-height/8)<50) {
    pantalla = 18;
  }
}


void keyPressed() {
  //Volver al inicio al apretar cualquier tecla
  pantalla=0;
  posY = height + 100;
}
