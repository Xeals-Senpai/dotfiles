/*
 * Xeals-Senpai
 * Tutorial 6 Feb 15th 2021
 * Operating Systems & System Drivers
 *
*/

/*/Question 1

#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main()
{
	int id;
	int x = 30;
	printf("Hello World\n");

	id=fork();

	if (id>0)
	{
		//Parent process
		wait(NULL);
		printf("This is parent process\n");
		printf("x = %d\n");
	}

	else 
	{
		//Child process
		printf("This is child process");		
		printf("x = %d\n", x);
	}
}
*/

/*Question 2

#include <stdio.h>
#include <setjmp.h>

jmp_buf jb;

void main() {
	int x = 0;
	setjmp(jb);

	printf("Enter a value for x: ");
	scanf("%d", &x);
	printf("x = %d\n", x);

	longjmp(jb,1);
}
*/

/*
 * Question 3:
 *
 * Setjmp is a function that creates a savestate environment whereas longjmp is a function that
 * restores that savestate to normal#
 *
*/

/*
 * Question 4:
 *
 * The jump buffer is an array type which stores information required to restore the save calling
 * environment created by setjmp
 *
*/

/*
 *
 * Question 5:

#include <stdio.h>
#include <signal.h>
#include <setjmp.h>

void alarm_handler (int);
void interrupt_handler (int);

jmp_buf jb;

void main() 
{
	int x;

	
	signal(SIGALRM, interrupt_handler);
	setjmp(jb);
	printf("Setting up an Alarm\n");
	printf("Please enter a value for x: ");
	scanf("%d\n",&x);
	printf("x = %d\n", x); 

	//alarm(5);	

	longjmp(jb,1);
}

void alarm_handler (int signo)
{
	printf("The signal generated from the alarm has been caught\n");
}

void interrupt_handler (int signo)
{
	printf("An interrupt signal has been caught!!");
}


*/

/*
 * Question 5:
 *
 * The interrupt handler message is not being caught after recalling the savestate environment
 *
*/









