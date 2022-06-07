/*
  Procesamiento Digital de Imágenes
  Ejemplo 26: Mezcla de colores con blend() I
*/

background(0);
stroke(153);
strokeWeight(24);
smooth();
line(44, 0, 24, 80);
line(0, 24, 80, 44);
/*
  Sintaxis: blend(x, y, width, height, dx, dy, dwidth, dheight, modo)
            blend(srcImg, x, y, width, height, dx, dy, dwidth, dheight, modo)

            modo:  BLEND, ADD, SUBTRACT, DARKEST, LIGHTEST, DIFFERENCE,
            EXCLUSION, MULTIPLY, SCREEN, OVERLAY, HARD_LIGHT, SOFT_LIGHT
            o DODGE
*/
blend(0, 0, 100, 100, 16, 0, 100, 100, ADD);

