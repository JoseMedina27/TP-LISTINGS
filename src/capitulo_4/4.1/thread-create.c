#include <pthread.h>
#include <stdio.h>

/*Imprime x en stderr. El parámetro no es unused. No vuelve.    */

void* print_xs (void* unused){
    while (1)
        fputc ('x', stderr);
    return NULL;
}

/*El programa principal.    */

int main(){
    pthread_t thread_id;
    /*Crea un nuevo hilo. El nuevo hilo ejecutara la funcion 
        print_xs.   */
    pthread_create (&thread_id, NULL, &print_xs, NULL);
    /*Imprime o continuamente en stderr. */
    while(1)
        fputc ('o', stderr);
    return 0;
}