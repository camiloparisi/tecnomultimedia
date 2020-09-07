void mensaje_perder() {
  background(0);
  imageMode(CENTER);
  image(perdiste, width/2, height/2, width, height);
  fill(100);
  textSize(30);
  textAlign(CENTER, CENTER);
  text(("¡Perdiste! \n Presiona R para volver a jugar.\n \n Puntos = " + puntos), width/2, height/2);
}
