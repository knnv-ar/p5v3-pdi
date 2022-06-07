/*
  Procesamiento Digital de Imágenes
  Ejemplo 31: Máscaras con método .mask
*/

background(255);
PImage img = loadImage("baboon100.png");
PImage mascaraImg = loadImage("mascara.png");
img.mask(mascaraImg);
image(img, 0, 0);