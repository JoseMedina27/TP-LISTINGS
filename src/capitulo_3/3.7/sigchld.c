#include <signal.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>

sig_atomic_t child_exit_status;

void clean_up_child_process (int signal_number){
    /*Limpiamos el proceso hijo.    */
    int status;
    wait (&status);
    /*Almacenamos el estado de salida en la variable global*/
    child_exit_status = status;
}

int main(){
    /*Controlamos SIGCHLD llamando a clean_up_child_process*/
    struct sigaction sigchld_action;
    memset (&sigchld_action, 0, sizeof (sigchld_action));
    sigchld_action.sa_handler = &clean_up_child_process;
    sigaction (SIGCHLD, &sigchld_action, NULL);

    /*Ahora has cosas, incluyendo el forking a un proceso hijo*/

    pid_t child_pid;

    child_pid = fork () ;
    if (child_pid != 0) {
        printf ("this is the parent process, with id %d\n", (int) getpid ());
        printf ("the child's process ID is %d\n",(int) child_pid );
    }
    else
        printf ("this is the child process, with id %d\n", (int) getpid ());
    return 0;
}