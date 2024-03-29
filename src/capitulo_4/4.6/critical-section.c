#include <pthread.h>
#include <stdio.h>
#include <string.h>
/*
An array of balances in accounts, indexed by account number. */

float* account_balances;

/*  Transfer DOLLARS from account FROM_ACCT to account TO_ACCT. Return
    0 if the transaction succeeded, or 1 if the balance FROM_ACCT is 
    too small.  */
int process_transaction (int from_acct, int to_acct, float dollars){
    int old_cancel_state;
    
    /* Check the balance in FROM_ACCT. */
    if (account_balances[from_acct]  <  dollars)
        return 1;
    /* Begin critical section. */
    pthread_setcancelstate (PTHREAD_CANCEL_DISABLE, &old_cancel_state);
    /* Move the money. */
    account_balances[to_acct] += dollars;
    account_balances[from_acct] -= dollars;
    /* End critical section. */
    pthread_setcancelstate (old_cancel_state, NULL);
    
    return 0;
}

int main(){
    int cuenta_emisora = 2023;
    int cuenta_receptora = 2729;

    float dolares = 1525000;

    int resultado = process_transaction (cuenta_emisora, cuenta_receptora, dolares);

    return 0;
}