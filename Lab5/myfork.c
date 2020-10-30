#include <stdio.h>
#include <unistd.h>
int main(void) {
	long childpid;
	childpid = fork();
	if (childpid == 0) /* child code */
		printf("I am child %ld\n", (long)getpid());
	else
		printf("I am parent %ld\n", (long)getpid()); /* parent code */
	return 0;
}
