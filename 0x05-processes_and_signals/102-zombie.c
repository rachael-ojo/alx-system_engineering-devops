#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

// Function to create zombie processes
void create_zombies(int num_zombies) {
    pid_t pid;
    int i;

    for (i = 0; i < num_zombies; i++) {
        pid = fork();

        if (pid < 0) {
            perror("fork");
            exit(EXIT_FAILURE);
        } else if (pid == 0) {  // Child process
            printf("Zombie process created, PID: %d\n", getpid());
            exit(EXIT_SUCCESS);  // Child exits immediately
        }
    }
}

int main(void) {
    // Number of zombie processes to create
    int num_zombies = 5;

    // Create zombie processes
    create_zombies(num_zombies);

    // Function to hold the parent process until a key is pressed
    getchar();

    return 0;
}
