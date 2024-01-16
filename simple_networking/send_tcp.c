#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#define MAX 80
#define PORT 8080
#define SA struct sockaddr
void func(int sockfd)
{
	char buff[MAX];
	int n;
	for (;;) {
		bzero(buff, sizeof(buff));
		printf("Enter the string : ");
		n = 0;
		while ((buff[n++] = getchar()) != '\n')
			;
		write(sockfd, buff, sizeof(buff));
		bzero(buff, sizeof(buff));
		read(sockfd, buff, sizeof(buff));
		printf("From Server : %s", buff);
		if ((strncmp(buff, "exit", 4)) == 0) {
			printf("Client Exit...\n");
			break;
		}
	}
}

int main()
{
	int sockfd, connfd;
	struct sockaddr_in servaddr, cli;
    struct hostent *host;

	// socket create and verification
	sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if (sockfd == -1) {
		printf("socket creation failed...\n");
		exit(0);
	} else {
		printf("Socket successfully created..\n");
        host = gethostbyaddr((const char *)&servaddr.sin_addr.s_addr, sizeof(servaddr.sin_addr.s_addr), AF_INET);
        printf("Connected to the server at %s\n", host ? host->h_name : "");
    }
	bzero(&servaddr, sizeof(servaddr));
	// assign IP, PORT
	servaddr.sin_family = AF_INET;
	servaddr.sin_addr.s_addr = inet_addr("127.0.0.1");
	servaddr.sin_port = htons(PORT);

	// connect the client socket to server socket
	if (connect(sockfd, (SA*)&servaddr, sizeof(servaddr)) != 0) {
		printf("connection with the server failed...\n");
		exit(0);
	}
	else {
		printf("connected to the server.. %d\n", get_local_port(sockfd));
    }

	// function for chat
	func(sockfd);

	// close the socket
	close(sockfd);
}
// Function to get the local port of the socket
int get_local_port(int sockfd) {
    struct sockaddr_in addr;
    socklen_t len = sizeof(addr);

    if (getsockname(sockfd, (struct sockaddr*)&addr, &len) == -1) {
        perror("getsockname");
        return -1;
    }

    return ntohs(addr.sin_port);
}

