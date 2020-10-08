void inicializar() {

  pantalla = 0;

  imageMode(CENTER);
  textAlign(CENTER, CENTER);

  posY = height + 100; //posición para créditos

  medio= width/2;
  izq=width/4;
  der=width-width/4;
  abajo=height-height/8;

  fuente1 = loadFont("Apple-Chancery-48.vlw");
  fuente2 = loadFont("ArialNarrow-48.vlw");

  inicializar_imagenes();
  inicializar_textos();
  inicializar_botones();
}

void inicializar_imagenes() {
  for (int i=0; i<cant_pantallas; i++) {
    img[i] = loadImage(i + ".jpg");
  }
}


void inicializar_textos() {
  textos[0] = "Bienvenidos a la aventura! \n ¡Tu mismo irás eligiendo la historia! \n Si quieres volver a comenzar, \n solo debes presionar la tecla R. \n Para ir a los créditos presiona C.";
  textos[1] = "En el pueblo de Hamelín, \n sus habitantes pescaban y \n se bañaban en el río y \n cultivaban sus propios alimentos";
  textos[2] = "Los habitantes se levantaron por \n la mañana y vieron todos estos \n ratones, preocupados, corrieron por \n todos lados y  entraron en pánico, \n preocupados porque los ratones \n se iban a comer su trigo";
  textos[3] = "El pueblo se reúne para decidir \n qué hacer al respecto. Por lo que el \n alcalde llame a una votación:";
  textos[4] = "El pueblo alza sus manos y decide \n intentar adaptarse y convivir \n con los ratones!";
  textos[5] = "Los ratones se convirtieron en una \n plaga tan grande que comieron \n todo el trigo del campo y todo lo \n comestible del pueblo. El pueblo \n desaparece, la gente decidió mudarse.";
  textos[6] = "El pueblo alza sus manos y decide \n recompensar con un saco de monedas \n de oro a quien extermine los ratones";
  textos[7] = "Un joven comenzó a tocar la \n flauta, su melodía atrajo a los \n ratones y lo siguieron, atravesaron \n montañaas y los ratones \n desaparecieron por siempre";
  textos[8] = "Todos estaban felices, por lo que \n decidieron organizar una fiesta \n para celebrar que ya  no había ratones";
  textos[9] = "El joven decide regresar y buscar \n al alcalde, cuando lo encuentra \n le reclama su oro...";
  textos[10] = "¡El flautista se retira contento con \n su oro y el pueblo queda muy contento con el!";
  textos[11] = "El flautista, enojado, decide vengarse \n tocando una nueva melodía \n en la plaza principal";
  textos[12] = "El joven flautista toca una nueva melodía \n en su flauta, los niños lo siguen y \n el se aleja hacia el bosque. Los niños \n desaparecen y el nunca más regresa";
  textos[13] = "El pueblo busca desesperado \n a los niños";
  textos[14] = "El alcalde le pide disculpas, dice haber aprendido \n la lección y sentirse muy arrepentido. \n El flautista acepta  sus moendas y sus palabras, \n por lo que esta vez toca una nueva melodía \n que atrajo a todos los niños sanos  y salvos \n a la plaza principal. El pueblo, el alcalde \n y el flautista  quedaron muy conformes";
  textos[15] = "El flautista dijo ''tienes que \n aprender a hacer valer tu palabra, \n y en esto no hay segundas oportunidades, \n ahora deberán vivir en un \n pueblo sombrío y sin risas''";
  textos[16] = "El joven toca una nueva melodía en su \n flauta, los adultos lo siguen y el se aleja \n hacia el bosque. Los adultos desaparecen \n y nunca más regresan...";
  textos[17] = "¡El pueblo, sin ratones ni adultos avaros \n y codiciosos, organiza una fiesta y están \n todos  muy contentos!";
  textos[18] = "";
}

void inicializar_botones() {

  int[] bot1={1, abajo, medio};
  int[] bot2={2, abajo, medio};
  int[] bot3={3, abajo, medio};
  int[] bot4={4, abajo, izq};
  int[] bot5={6, abajo, der}; 
  int[] bot6={5, abajo, medio};
  int[] bot7={18, abajo, medio};
  int[] bot8={7, abajo, medio};
  int[] bot9={8, abajo, medio};
  int[] bot10={9, abajo, medio};
  int[] bot11={10, abajo, izq};
  int[] bot12={11, abajo, der};
  int[] bot13={18, abajo, medio};
  int[] bot14={12, abajo, izq};
  int[] bot15={16, abajo, der};
  int[] bot16={13, abajo, medio};
  int[] bot17={14, abajo, izq};
  int[] bot18={15, abajo, der};
  int[] bot19={18, abajo, medio};
  int[] bot20={18, abajo, medio};
  int[] bot21={17, abajo, medio};
  int[] bot22={18, abajo, medio};



  bot[0][1]=bot1;
  bot[1][1]=bot2;
  bot[2][1]=bot3;
  bot[3][0]=bot4;
  bot[3][2]=bot5;
  bot[4][1]=bot6;
  bot[5][1]=bot7;
  bot[6][1]=bot8;
  bot[7][1]=bot9;
  bot[8][1]=bot10;
  bot[9][0]=bot11;
  bot[9][2]=bot12;
  bot[10][1]=bot13;
  bot[11][0]=bot14;
  bot[11][2]=bot15;
  bot[12][1]=bot16;
  bot[13][0]=bot17;
  bot[13][2]=bot18;
  bot[14][1]=bot19;
  bot[15][1]=bot20;
  bot[16][1]=bot21;
  bot[17][1]=bot22;
}
