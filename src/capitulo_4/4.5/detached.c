#include <pthread.h>
#include <stdio.h>

void* thread_function (void* thread_arg){
    int x = 0;

    while (x < 100){
        x++;
    }
    printf("%d\n", x);
    return NULL;
}

int main(){
    pthread_attr_t attr;
    pthread_t thread;

    pthread_attr_init (&attr);
    pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_DETACHED);
    pthread_create (&thread, &attr, &thread_function, NULL);
    pthread_attr_destroy (&attr);

    /*Do work here...   */
   
    int cont = 0;
    while(cont < 1000){
        cont = cont +100;
    }

    //printf("The program is here\n");

    //pthread_join(thread, NULL);

    /*No need to join the second thread.    */
    return 0;
}