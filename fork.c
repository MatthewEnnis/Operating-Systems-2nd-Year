#include <stdio.h>
#include <unistd.h>

int main()
{
	int x = 1;
	if (fork()) printf("I am the parent, x = %d\n",x);
	else printf("I am the child, x = %d\n",x);
}
