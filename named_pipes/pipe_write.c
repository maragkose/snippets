// C program to implement one side of FIFO 
// This side writes first, then reads 
#include <stdio.h> 
#include <string.h> 
#include <fcntl.h> 
#include <sys/stat.h> 
#include <sys/types.h> 
#include <unistd.h> 
  
int main() 
{ 
    int fd; 
  
    // FIFO file path 
    char * myfifo = "/tmp/myfifo"; 
  
    // Creating the named file(FIFO) 
    // mkfifo(<pathname>, <permission>) 
    mkfifo(myfifo, 0666); 
        
//    unsigned char buf[] = {0x00, 0x16, 0xC0, 0x00,  0x0A, 0xBC, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01, 0x00, 0x20, 0x0f};

    unsigned char buf[] = {0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x0f};
  
    char arr1[80], arr2[80]; 
    fd = open(myfifo, O_WRONLY); 
    while (1) 
    { 
        // Open FIFO for write only 
  
        // Take an input arr2ing from user. 
        // 80 is maximum length 
        fgets(arr2, 80, stdin);
        

        fprintf(stderr, "ok"); 
        // Write the input arr2ing on FIFO 
        // and close it 
        write(fd, &buf[0], 23); 
    }
    close(fd);
    return 0; 
} 
