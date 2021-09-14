#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/types.h>

/* We must define union semun ourselves. */

union semun {
    int val;
    struct semid_ds *buf;
    unsigned short int *array;
    struct seminfo *__buf;
};

/* Obtain a binary semaphore's ID, allocating if necessary. */

int binary_semaphore_allocation (key_t key, int sem_flags){
    return semget (key, 1, sem_flags);
}

/* Deallocate a binary semaphore. All users must have finished their
    use. Returns -1 on failure. */

int binary_semaphore_deallocate (int semid){
    union semun ignored_argument;
    return semctl (semid, 1, IPC_RMID, ignored_argument);
}

int main(){
    key_t key = 27;
    int sem_flags = 1;
    int semid, result;

    semid = binary_semaphore_allocation(key, sem_flags);
    result = binary_semaphore_deallocate(semid);
    
    return 0;
}