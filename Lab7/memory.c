#include <stdlib.h>
#include <stdio.h>
int main(){
char *some_memory;
int kilobyte = 1024;
some_memory = (char *)malloc(kilobyte);
if (some_memory != NULL) {
	free(some_memory);
	printf("Memory allocated and freed again\n");}
return 0;}
