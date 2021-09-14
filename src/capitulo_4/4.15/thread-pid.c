#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

void* thread_function (void* arg){
    fprintf (stderr, "child thread pid is %d\n", (int) getpid ());
    /* Spin forever. */
    while (1);
        return NULL;
}

int main (){

    int valor_retorno;
    valor_retorno = system ("ps x");

    fprintf (stderr,"Pulse los botones de control+c para cerrar la terminal ya que la aplicacion entra en loop\n");
    
    pthread_t thread;
    fprintf (stderr, "main thread pid is %d\n", (int) getpid ());
    pthread_create (&thread, NULL, &thread_function, NULL);
    /* Spin forever. */
    while (1);
        return valor_retorno;
}