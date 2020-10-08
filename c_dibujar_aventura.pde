void prepantalla (int pant_img_text) { 
  //pant_img_text es utilizado tanto para para las pantallas, como para el texto y la imagen que le corresponde a la misma
  if (pant_img_text==pantalla) {
    image(img[pant_img_text], width/2, height/2);
    img[pant_img_text].resize(width, height);
    fill(0);
    textFont(fuente1);
    textSize(30);
    text(textos[pant_img_text], medio, height/2);
    textFont(fuente2);
    textSize(18);
    fill(200, 200, 200, 200);
    draw_botones(150, 35, 28);
  }
}


void draw_botones(int tam, int texto_grande, int texto_mediano) {
  if (pantalla==0) {
    ellipse (medio, abajo, tam, tam);
    fill(150, 0, 0);
    text("¡Comenzar!", medio, abajo);
  } else if (pantalla==1 || pantalla==2 || pantalla==4 || pantalla==6 || pantalla==7 || pantalla==8 || pantalla==12 || pantalla==16 || pantalla==17) { //pantallas con el mismo boton
    ellipse (medio, abajo, tam, tam);
    fill(150, 0, 0);
    text("¡Siguiente!", medio, abajo);
  } else if (pantalla==3) {
    ellipse (izq, abajo, tam, tam);
    ellipse (der, abajo, tam, tam);
    fill(150, 0, 0);
    text("Adaptarse a \n vivir con los ratones", izq, abajo);
    text("Recompensar a \n quien los extermine", der, abajo);
  } else if (pantalla==5 || pantalla==10 || pantalla==14 || pantalla==15) {
    ellipse (medio, abajo, tam, tam);
    fill(150, 0, 0);
    textFont(fuente1);
    textSize(texto_grande);
    text("¡Fin!", medio, abajo);
  } else if (pantalla==9) {
    ellipse (izq, abajo, tam, tam);
    ellipse (der, abajo, tam, tam);

    textSize(texto_grande);
    fill(0);

    fill(150, 0, 0); 
    text("Si", izq, abajo);
    text("No", der, abajo);
    textFont(fuente1);
    fill(0);
    text("¿Desea pagarle al flaustista?", medio, height-height/3);
  } else if (pantalla==11) {
    ellipse (izq, abajo, tam, tam);
    ellipse (der, abajo, tam, tam);
    fill(150, 0, 0);
    text("Una irresistible \n para los niños", izq, abajo);
    text("Una irresistible \n para los adultos", der, abajo);
    textSize(texto_mediano);
    textFont(fuente1);
    fill(0);
    text("¿Qué melodía deseas que toque?", medio, height-height/3);
  } else if (pantalla==13) {
    ellipse (izq, abajo, tam, tam);
    ellipse (der, abajo, tam, tam);
    fill(150, 0, 0);
    textSize(texto_grande);
    text("¿Quieres que devuelva los niños?", medio, height-height/3);
    textFont(fuente2);
    text("Si", izq, abajo);
    text("No", der, abajo);



    //CREDITOS
  } else if (pantalla==18) {
    textFont(fuente2);
    textSize(texto_mediano);
    fill(255);
    text("CREDITOS: \n \n Fabula original: Hermanos Grimm \n Ilustraciones: Kids Hut \n Adaptación: Parisi Camilo (85164/4) \n Cátedra: Tecnología Multimedial 1 \n Universidad Nacional de La Plata \n \n Septiembre 2020", medio, posY);
    posY=posY-1;
  }
}
