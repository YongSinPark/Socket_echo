//TCP_SERVER

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <arpa/inet.h>

#define TCP_PORT 5100

int main(int argc, char** argv)
{
    int server_socket_fd, client_sock_fd;               //소켓 디스크립트 정의                    
    socklen_t clen;
    int n;
    struct sockaddr_in client_addr, server_addr;        //주소 구조체 정의
    char buf[BUFSIZ] = "Hello world";                   //클라이언트에 보낼 문자열

    /*서버 소켓 생성*/
    if((server_socket_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        perror("socket()");
        return -1;
    }

    int option = 1;
    setsockopt(server_socket_fd, SOL_SOCKET, SO_REUSEADDR, &option, sizeof(option));


    /*서버 구조체에 주소 지정*/
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htonl(INADDR_ANY);      //All local IP 모두
    server_addr.sin_port = htons(TCP_PORT);               //사용할 포트 지정

    /*bind 함수를 사용하여 서버 소켓의 주소 설정*/
    if(bind(server_socket_fd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0)
    {
        perror("bind()");
        return -1;
    }

    if(listen(server_socket_fd, 8) < 0)
    {
        perror("listen()");
        return -1;
    }

    clen = sizeof(client_addr);

    while(1)
    {
        /*클라이언트가 접속하면 접속을 허용하고 클라이언트 소켓 생성*/
        client_sock_fd = accept(server_socket_fd, (struct sockaddr*)&client_addr, &clen);

        printf("Client is connected : %s\n", inet_ntoa(client_addr.sin_addr));

        if((n = read(client_sock_fd, buf, BUFSIZ)) <= 0) perror("read()");

        printf("Recieved data : %s", buf);

        /*클라이언트로 buf에 있는 문자열 전송*/
        if(write(client_sock_fd, buf, n) <= 0) perror("write()");

        close(client_sock_fd);                                            //클라이언트 소켓 닫음
    }   

    close(server_socket_fd);                                                //서버 소켓 닫음

    return 0;
}