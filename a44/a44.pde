/*
  Procesamiento Digital de Imágenes
  Ejemplo 44: Convolución I
*/

// La convolución es una operación mediante la cual se modifica
// el valor de color de un pixel en relación a un conjunto de
// pixeles circundantes (llamado núcleo de convolución).

// Máscara Laplaciana de detección de contorno:
float[][] kernel1 = { { -1, -1, -1 },
                     { -1, 8, -1 },
                     { -1, -1, -1 } };

// Máscara de detección de contorno basado en gradientes:
float[][] kernel2 = { { -1, 0, 1 },
                     { -2, 0, 2 },
                     { -1, 0, 1 } };

// Máscara pasa-bajo I
// Los filtros espaciales pasa-bajo, dejan el contenido
// de baja frecuencia inalterado mientras que atenúan los
// contenidos de alta frecuencia. Este tipo de filtros
// resulta adecuado para atenuar ruido aditivo aleatorio
// presente en la imagen, pero introduce un apreciable
// efecto de desenfoque.
float[][] kernel3 = { { .11, .11, .11 },
                     { .11, .11, .11 },
                     { .11, .11, .11 } };

// Máscara pasa-bajo II
float[][] kernel4 = { { .1, .1, .1 },
                     { .1, .2, .1 },
                     { .1, .1, .1 } };

// Máscara pasa-bajo III
float[][] kernel5 = { { .0625, .125, .0625 },
                     { .125, .25, .125 },
                     { .0625, .125, .0625 } };

// Máscara pasa-alto I
// Los filtros pasa alto, tienen la propiedad de acentuar
// los detalles de alta frecuencia de una imagen,
// normalmente los filtros pasa alto se utilizan cuando
// se quiere examinar objetos con alto contenido de
// frecuencia espacial, como consecuencia de tal
// procesamiento, las porciones de una imagen que presentan
// componentes de alta frecuencia, serán resaltadas mediante
// la utilización de niveles de gris más claros, mientras que
// aquellas con componentes de baja frecuencia serán más oscuras,
// en este sentido, este tipo de filtro puede ser utilizado para
// reforzar los bordes presentes en la imagen. Uno de los efectos
// indeseados  de estos filtros es que pueden acentuar el ruido
// de la imagen.
float[][] kernel6 = { { -1, -1, -1 },
                     { -1, 9, -1 },
                     { -1, -1, -1 } };

// Máscara pasa-alto II
float[][] kernel7 = { { 0, -1, 0 },
                     { -1, 5, -1 },
                     { 0, -1, 0 } };

// Máscara pasa-alto III
float[][] kernel8 = { { 1, -2, 1 },
                     { -2, 5, -2 },
                     { 1, -2, 1 } };

size(100, 100);

// Carga la imagen original:
PImage img = loadImage("baboon100.png");

img.loadPixels();

// Crea una imagen opaca del mismo tamaño que la original:
PImage edgeImg = createImage(img.width, img.height, RGB);

// Bucle que recorre cada pixel de la imagen:
for (int y = 1; y < img.height-1; y++) { // Saltea borde superior e inferior
  for (int x = 1; x < img.width-1; x++) { // Saltea borde izquierdo y derecho

    // variable de suma del kernel para el pixel actual:
    float sum = 0;
    for (int ky = -1; ky <= 1; ky++) {
      for (int kx = -1; kx <= 1; kx++) {

        // Calcula el pixel adyacente para esta posición del kernel:
        int pos = (y + ky)*width + (x + kx);

        // La imagen es en escala de grises, red/green/blue son idénticos:
        float val = red(img.pixels[pos]);

        // Multiplica los píxeles adyacentes basado en los valores del kernel:
        sum += kernel1[ky+1][kx+1] * val;
      }
    }

    // Determino el valor de gris basado en la suma del kernel,
    // para el pixel actual de la nueva imagen:
    edgeImg.pixels[y*img.width + x] = color(sum);
  }
}

// Declaro que hay cambios en edgeImg.pixels[]
edgeImg.updatePixels();

// Dibujo la nueva imagen:
image(edgeImg, 0, 0);