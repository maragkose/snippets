#include <iostream>


int main () {

int retry=0;
int myretries = 3 ;
bool flag = false;
do {

    flag = true;
    std::cerr << "ATTETMPT #" << retry << std::endl; 
    retry++;

} while ((flag != true) && (retry!=myretries));

}
