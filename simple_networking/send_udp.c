
// Client side implementation of UDP client-server model 
#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 
#include <string.h> 
#include <sys/types.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <netinet/in.h> 
    
#define PORT     514 
#define MAXLINE 1024 
    
// Driver code 
int main(int argc, char ** argv) { 
    int sockfd; 
    char buffer[MAXLINE]; 
    char *hello = argv[1]; 
    struct sockaddr_in     servaddr; 
    
    // Creating socket file descriptor 
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) { 
        perror("socket creation failed"); 
        exit(EXIT_FAILURE); 
    } 

    memset(&servaddr, 0, sizeof(servaddr)); 
        
    // Filling server information 
    servaddr.sin_family = AF_INET; 
    servaddr.sin_port = htons(PORT); 
   // servaddr.sin_addr.s_addr = "127.0.0.1"; 
        
    int n, len; 
        
    sendto(sockfd, (const char *)argv[1], strlen(argv[1]), 
        0, (const struct sockaddr *) &servaddr,  
        sizeof(servaddr)); 
    
    close(sockfd); 
    return 0; 
}
