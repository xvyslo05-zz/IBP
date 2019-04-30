#import <stdlib.h>
#import <stdio.h>

double yin[2]; // vstupy integrátorů
double y[2] = { 1.0, 0.0 }; // počáteční podmínky
double time = 0; // modelový čas
double h = 0.01; // krok

void update() {
// Popis systému: výpočet VSTUPŮ integrátorů
  yin[0] = y[1]; // y’
  yin[1] = -y[0]; // y’’ = -y
}
void integrate_euler() { // krok integrace:
  update(); // výpočet aktuálních vstupů
  for (int i = 0; i < 2; i++) // postupně pro všechny integrátory
  y[i] += h * yin[i]; // výpočet nového stavu
  time += h; // posun času
}
int main() { // popis experimentu
  while (time < 20) {
    printf("%10f %10f\n", time, y[0]);
    integrate_euler();
  }
  return 0;
}
