#include <pthread.h>
#include <malloc.h>

int thread_flag;
pthread_mutex_t thread_flag_mutex;

/* Allocate a temporary buffer.  */

void* allocate_buffer (size_t size){
    return malloc (size);
}

/* Deallocate a temporary buffer.  */

void deallocate_buffer (void* buffer){
    free (buffer);
}

void do_work (){
    /* Allocate a temporary buffer. */
    void* temp_buffer = allocate_buffer (1024);
    /*  Register a cleanup handler for this buffer, to deallocate it in
        case the thread exits or is cancelled. */
    pthread_cleanup_push (deallocate_buffer, temp_buffer);
    /*  Do some work here that might call pthread_exit or might be
        cancelled... */
    /*  Unregister the cleanup handler. Because we pass a nonzero value,
        this actually performs the cleanup by calling
        deallocate_buffer. */
    pthread_cleanup_pop (1);
}

void initialize_flag (){
    pthread_mutex_init (&thread_flag_mutex, NULL);
    thread_flag = 0;
}

/*  Calls do_work repeatedly while the thread flag is set; otherwise
    spins. */

void* thread_function (void* thread_arg){
    while (1) {
        int flag_is_set;
        /* Protect the flag with a mutex lock. */
        pthread_mutex_lock (&thread_flag_mutex);
        flag_is_set = thread_flag;
        pthread_mutex_unlock (&thread_flag_mutex);
        
        if (flag_is_set)
            do_work ();
        /* Else don't do anything. Just loop again. */
    }
    return NULL;
}

/* Sets the value of the thread flag to FLAG_VALUE. */

void set_thread_flag (int flag_value){
    /* Protect the flag with a mutex lock. */
    pthread_mutex_lock (&thread_flag_mutex);
    thread_flag = flag_value;
    pthread_mutex_unlock (&thread_flag_mutex);
}

int main(){

    /*pthread_t thread;

    initialize_flag();

    pthread_create (&thread, NULL, &thread_function, NULL);

    pthread_join (thread, NULL);*/
    //Aqui debemos realizar los pasos necesarios para trabajar con los hilos
    //Por ahora no hacemos nada

    //thread_function(NULL);

    return 0;
}