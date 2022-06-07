/*
  Procesamiento Digital de Imágenes
  Ejemplo 12: Lectura de píxeles: get() III con lonja
*/

strokeWeight(8);
line(0, 0, width, height);
line(0, height, width, 0);
// La función get() con parámetros toma una sección
// del área de visualización:
PImage lonja = get(0, 0, 20, 100);  
set(18, 0, lonja);
set(50, 0, lonja);

