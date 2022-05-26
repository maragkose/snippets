#include <cpprest/json.h>


int main() {

web::json::value arr;
arr[0] = web::json::value(false);
arr[1] = web::json::value(U("hello"));

}
