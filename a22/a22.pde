/*
  Procesamiento Digital de Imágenes
  Ejemplo 22: Filtros con filter() I
 */

PImage img = loadImage("baboon100.png");
image(img, 0, 0); 
/*
  Sintaxis: filter(modo)
            filter(modo, nivel)

            modo: THRESHOLD, GRAY, INVERT,
            POSTERIZE, BLUR, OPAQUE, ERODE,
            o DILATE
*/
filter(THRESHOLD, 0.8); 