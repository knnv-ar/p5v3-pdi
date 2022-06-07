/*
  Procesamiento Digital de Imágenes
  Ejemplo 23: Filtros con filter() II
*/

// Ojo: filter() sólo actúa sobre aquello que
// ya ha sido dibujado!!!

smooth();
strokeWeight(5);
// Línea afectada por filter()
line(0, 30, 100, 60);
filter(BLUR, 3); 
// Línea NO afectada por filter()
line(0, 50, 100, 80);

