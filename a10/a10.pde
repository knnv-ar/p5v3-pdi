/*
  Procesamiento de imágen Digital
  Ejemplo 10: Lectura de píxeles: get() I
*/

strokeWeight(8);
line(0, 0, width, height);
line(0, height, width, 0);
// La función get() sin parámatros obtiene
// una copia de toda el área de la ventana
// de visualización en el momento en que se
// la llama:
PImage cross = get();  
// Dibuja la imagen en una nueva posición:
image(cross, 0, 50);   

