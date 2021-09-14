#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
    pid_t child_pid;

    /*crea un proceso hijo*/
    child_pid = fork();
    if(child_pid > 0){
        /*Este es el proceso padre. Sleep for a minute. */
        sleep(60);
    }
    else{
        /*Este es el proceso hijo. Salimos inmediatamente*/
        exit(0);
    }
    return 0;
}