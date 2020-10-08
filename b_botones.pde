void botones () {

  if (pantalla != cant_pantallas-1) { //No se controla pantalla de créditos con clicks


    if ((bot[pantalla][1][0]+(bot[pantalla][1][1])+(bot[pantalla][1][2]))>0) { //Pregunto si hay botón central
      if (dist (mouseX, mouseY, bot[pantalla][1][2], bot[pantalla][1][1])<75) { //Tamaño del boton para hacer click
        pantalla=bot[pantalla][1][0];//Redirecciono a la pantalla que figura en la inicialización
      }
    } else {
     
      if (dist (mouseX, mouseY, bot[pantalla][0][2], bot[pantalla][0][1])<75) { //Botón izquierdo
        pantalla=bot[pantalla][0][0];
      }
      if (dist (mouseX, mouseY, bot[pantalla][2][2], bot[pantalla][2][1])<75) { //Botón derecho
        pantalla=bot[pantalla][2][0];
      }
    }
  }
}
