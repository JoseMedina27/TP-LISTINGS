#include <pthread.h>
#include <malloc.h>

int thread_flag;
pthread_cond_t thread_flag_cv;
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
    /* Initialize the mutex and condition variable. */
    pthread_mutex_init (&thread_flag_mutex, NULL);
    pthread_cond_init (&thread_flag_cv, NULL);
    /* Initialize the flag value. */
    thread_flag = 0;
}

/*  Calls do_work repeatedly while the thread flag is set; blocks if
    the flag is clear. */

void* thread_function (void* thread_arg){
    /* Loop infinitely. */
    while (1) {
        /* Lock the mutex before accessing the flag value. */
        pthread_mutex_lock (&thread_flag_mutex);
        while (!thread_flag)
            /* The flag is clear. Wait for a signal on the condition
            variable, indicating that the flag value has changed. When the
            signal arrives and this thread unblocks, loop and check the
            flag again. */
            pthread_cond_wait (&thread_flag_cv, &thread_flag_mutex);
        /*  When we've gotten here, we know the flag must be set. Unlock
            the mutex. */
        pthread_mutex_unlock (&thread_flag_mutex);
        /* Do some work. */
        do_work ();
    }
    return NULL;
}

/* Sets the value of the thread flag to FLAG_VALUE. */
void set_thread_flag (int flag_value){
    /*  Lock the mutex before accessing the flag value. */
    pthread_mutex_lock (&thread_flag_mutex);
    /*  Set the flag value, and then signal in case thread_function is
        blocked, waiting for the flag to become set. However,
        thread_function can't actually check the flag until the mutex is
        unlocked. */
    thread_flag = flag_value;
    pthread_cond_signal (&thread_flag_cv);
    /* Unlock the mutex.    */
    pthread_mutex_unlock (&thread_flag_mutex);
}

int main(){

    /*pthread_t thread;

    //initialize_flag();

    pthread_create (&thread, NULL, &thread_function, NULL);

    pthread_join (thread, NULL);*/

    //thread_function(NULL);
    
    return 0;
}