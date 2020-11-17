class Texto {

  String textos [];
  String textosPantallaBotones [][];

  Texto(int p_cant_pantallas) {
    textos = new String [p_cant_pantallas];
    textosPantallaBotones = new String [p_cant_pantallas][2];

    inicializarTextosPantallas();
    inicializarTextosBotones();
  }
  void inicializarTextosPantallas() {
    textos[0] = "Bienvenidos a la aventura! \n ¡Tu mismo irás eligiendo la historia! \n Si quieres volver a comenzar, \n solo debes presionar la tecla R. \n Para ir a los créditos presiona C.";
    textos[1] = "En el pueblo de Hamelín, \n sus habitantes pescaban y \n se bañaban en el río y \n cultivaban sus propios alimentos";
    textos[2] = "Los habitantes se levantaron por \n la mañana y vieron todos estos \n ratones, preocupados, corrieron por \n todos lados y  entraron en pánico, \n preocupados porque los ratones \n se iban a comer su trigo";
    textos[3] = "El pueblo se reúne para decidir \n qué hacer al respecto. Por lo que el \n alcalde llame a una votación:";
    textos[4] = "El pueblo alza sus manos y decide \n intentar adaptarse y convivir \n con los ratones!";
    textos[5] = "Los ratones se convirtieron en una \n plaga tan grande que comieron \n todo el trigo del campo y todo lo \n comestible del pueblo. El pueblo \n desaparece, la gente decidió mudarse.";
    textos[6] = "El pueblo alza sus manos y decide \n recompensar con un saco de monedas \n de oro a quien extermine los ratones";
    textos[7] = "Un joven comenzó a tocar la \n flauta, su melodía atrajo a los \n ratones y lo siguieron, atravesaron \n montañaas y los ratones \n desaparecieron por siempre";
    textos[8] = "Todos estaban felices, por lo que \n decidieron organizar una fiesta \n para celebrar que ya  no había ratones";
    textos[9] = "El joven decide regresar y buscar \n al alcalde, cuando lo encuentra \n le reclama su oro...\n ¿Decides pagarle al flautista?";
    textos[10] = "¡El flautista se retira contento con \n su oro y el pueblo queda muy contento con el!";
    textos[11] = "El flautista, enojado, decide vengarse \n tocando una nueva melodía \n en la plaza principal";
    textos[12] = "El joven flautista toca una nueva melodía \n en su flauta, los niños lo siguen y \n el se aleja hacia el bosque. Los niños \n desaparecen y el nunca más regresa";
    textos[13] = "El pueblo busca desesperado \n a los niños \n ¿Quieres que devuelva los niños?";
    textos[14] = "El alcalde le pide disculpas, dice haber aprendido \n la lección y sentirse muy arrepentido. \n El flautista acepta  sus moendas y sus palabras, \n por lo que esta vez toca una nueva melodía \n que atrajo a todos los niños sanos  y salvos \n a la plaza principal. El pueblo, el alcalde \n y el flautista  quedaron muy conformes";
    textos[15] = "El flautista dijo ''tienes que \n aprender a hacer valer tu palabra, \n y en esto no hay segundas oportunidades, \n ahora deberán vivir en un \n pueblo sombrío y sin risas''";
    textos[16] = "El joven toca una nueva melodía en su \n flauta, los adultos lo siguen y el se aleja \n hacia el bosque. Los adultos desaparecen \n y nunca más regresan...";
    textos[17] = "¡El pueblo, sin ratones ni adultos avaros \n y codiciosos, organiza una fiesta y están \n todos  muy contentos!";
    textos[18] = "CREDITOS: \n \n Fabula original: Hermanos Grimm \n Ilustraciones: Kids Hut \n Adaptación: Parisi Camilo (85164/4) \n Cátedra: Tecnología Multimedial 1 \n Universidad Nacional de La Plata \n \n Noviembre 2020";
  }

  void inicializarTextosBotones() {
    textosPantallaBotones [0] [0] = "¡Comenzar!";
    textosPantallaBotones [0] [1] = "Créditos";

    textosPantallaBotones [1] [0] = "¡Siguiente!";
    textosPantallaBotones [1] [1] = "";

    textosPantallaBotones [2] [0] = "¡Siguiente!";
    textosPantallaBotones [2] [1] = "";

    textosPantallaBotones [3] [0] = "Adaptarse a \n vivir con los ratones";
    textosPantallaBotones [3] [1] = "Recompensar a \n quien los extermine";

    textosPantallaBotones [4] [0] = "¡Siguiente!";
    textosPantallaBotones [4] [1] = "";

    textosPantallaBotones [5] [0] = "¡Fin!";
    textosPantallaBotones [5] [1] = "";

    textosPantallaBotones [6] [0] = "¡Siguiente!";
    textosPantallaBotones [6] [1] = "";

    textosPantallaBotones [7] [0] = "¡Siguiente!";
    textosPantallaBotones [7] [1] = "";

    textosPantallaBotones [8] [0] = "¡Siguiente!";
    textosPantallaBotones [8] [1] = "";

    textosPantallaBotones [9] [0] = "Si";
    textosPantallaBotones [9] [1] = "No";

    textosPantallaBotones [10] [0] = "¡Fin!";
    textosPantallaBotones [10] [1] = "";

    textosPantallaBotones [11] [0] = "Una irresistible \n para los niños";
    textosPantallaBotones [11] [1] = "Una irresistible \n para los adultos";

    textosPantallaBotones [12] [0] = "Siguiente!";
    textosPantallaBotones [12] [1] = "";

    textosPantallaBotones [13] [0] = "Si";
    textosPantallaBotones [13] [1] = "No";

    textosPantallaBotones [14] [0] = "¡Fin!";
    textosPantallaBotones [14] [1] = "";

    textosPantallaBotones [15] [0] = "¡Fin!";
    textosPantallaBotones [15] [1] = "";

    textosPantallaBotones [16] [0] = "¡Siguiente!";
    textosPantallaBotones [16] [1] = "";

    textosPantallaBotones [17] [0] = "¡Siguiente!";
    textosPantallaBotones [17] [1] = "";
    
    textosPantallaBotones [18] [0] = "Volver";
    textosPantallaBotones [17] [1] = "";
  }

  String getTextoParaPantalla(int pantalla) {
    return textos[pantalla];
  }

  String getTextoParaPantallaBoton(int pantalla, int boton) {
    return textosPantallaBotones[pantalla][boton];
  }
}
