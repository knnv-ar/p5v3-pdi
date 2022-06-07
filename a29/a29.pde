/*
  Procesamiento Digital de Imágenes
  Ejemplo 29: Copia de píxeles con copy() I
*/

PImage img = loadImage("baboon100.png");
image(img, 0, 0); 
/*
  Sintaxis: copy(x, y, width, height, dx, dy, dwidth, dheight)
            copy(srcImg, x, y, width, height, dx, dy, dwidth, dheight)
*/
copy(0, 0, 100, 50, 0, 50, 100, 50);