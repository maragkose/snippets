// C program to implement one side of FIFO 
// This side reads first, then reads 
#include <stdio.h> 
#include <string.h> 
#include <fcntl.h> 
#include <sys/stat.h> 
#include <sys/types.h> 
#include <unistd.h> 

int main() 
{ 
	int fd1; 

	// FIFO file path 
	char * myfifo = "/tmp/myfifo"; 

	// Creating the named file(FIFO) 
	// mkfifo(<pathname>,<permission>) 
	mkfifo(myfifo, 0666); 
        fprintf(stderr, "fif");

	unsigned char str1[80], str2[80]; 
	while (1) 
	{ 
		// First open in read only and read 
		fd1 = open(myfifo,O_RDONLY); 
                fprintf(stderr, "open %d", fd1);
		int n = read(fd1, str1, 80); 

		// Print the read string and close 
		printf("read %d\n", n); 
		close(fd1); 

		// Now open in write mode and write 
		// string taken from user. 
		fd1 = open(myfifo,O_WRONLY); 
		write(fd1, str1, n); 
		close(fd1); 
	} 
	return 0; 
} 

