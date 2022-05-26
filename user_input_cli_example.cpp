#include <iostream>
#include <map>
#include <sstream>
#include <string>
#include <vector>
using namespace std;

int main() {
  vector <pair <int, int> > pairs;
  string s;

  cout << "# ";

  // While there is input and the user has not simply pressed ENTER
  while (getline(cin, s) && !s.empty()) {
      stringstream ss(s);
      if (!ss) {
          cout << "Invalid pair. Try again";
      } else {
          cout << "ok"<< std::endl << "# ";
      }
  }
}

