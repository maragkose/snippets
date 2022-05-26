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
    mkfifo(myfifo, 0777); 
  
    unsigned char str1[80], str2[80]; 
        fd1 = open(myfifo,O_RDWR); 
    while (1) 
    { 
        // First open in read only and read 
        int n = read(fd1, str1, 80); 
  
        // Print the read string and close 
        //printf("User1: %s\n", str1); 
  
        // Now open in write mode and write 
        // string taken from user. 
        //fd1 = open(myfifo,O_WRONLY);
        printf("ok %d", n);
        write(fd1, str1, 20); 
    } 
        close(fd1); 
    return 0; 
} 
