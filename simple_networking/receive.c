#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

#define PORT 8080
#define MAX_BUFFER_SIZE 1024

void func(int sockfd);

int main() {
    int sockfd, connfd, len;
    struct sockaddr_in servaddr, cli;

    // socket create and verification
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd == -1) {
        printf("Socket creation failed...\n");
        exit(0);
    }
    else {
        printf("Socket successfully created..\n");
    }
    bzero(&servaddr, sizeof(servaddr));

    // assign IP, PORT
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    servaddr.sin_port = htons(PORT);

    // Binding newly created socket to given IP and verification
    if ((bind(sockfd, (struct sockaddr*)&servaddr, sizeof(servaddr))) != 0) {
        printf("Socket binding failed...\n");
        exit(0);
    }
    else {
        printf("Socket successfully bound..\n");
    }

    // Now server is ready to listen and verification
    if ((listen(sockfd, 5)) != 0) {
        printf("Listen failed...\n");
        exit(0);
    }
    else {
        printf("Server listening..\n");
    }
    len = sizeof(cli);

    // Accept the data packet from client and verification
    connfd = accept(sockfd, (struct sockaddr*)&cli, &len);
    if (connfd < 0) {
        printf("Server accceptance failed...\n");
        exit(0);
    }
    else {
        printf("server acccepted the client...\n");
    }

    // Function for receiving data from client and sending it back
    func(connfd);

    // After sending close the socket
    close(sockfd);
}

void func(int sockfd) {
    char buffer[MAX_BUFFER_SIZE];
    int n;

    // Infinite loop for receiving data continuously
    while (1) {
        bzero(buffer, sizeof(buffer));

        // Read the data from client and verification
        n = read(sockfd, buffer, sizeof(buffer));
        if (n <= 0) {
            printf("Read error...\n");
            exit(0);
        }

        // Print buffer which contains the client contents
        printf("From client: %s\t To client : ", buffer);
        bzero(buffer, sizeof(buffer));
        fgets(buffer, sizeof(buffer), stdin);

        // Send the buffer to client
        write(sockfd, buffer, sizeof(buffer));

        // If the message contains "exit" then exit the loop
        if (strncmp("exit", buffer, 4) == 0) {
            printf("Server Exit...\n");
            break;
        }
    }
}

