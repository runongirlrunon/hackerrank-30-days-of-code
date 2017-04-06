// Unfortunately, this challenge is not available in Ruby, so I've completed it in C++.

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>

using namespace std;

class Difference {
private:
  vector<int> elements;

public:
  int maximumDifference;

  // my code start
  Difference(vector<int> newVector){
    elements = newVector;
  }

  void computeDifference(){
    sort(elements.begin(), elements.end());
    maximumDifference = elements[elements.size() - 1] - elements[0];
  }
  // my code end
}; // End of Difference class

int main() {
  int N;
  cin >> N;

  vector<int> a;

  for (int i = 0; i < N; i++) {
    int e;
    cin >> e;

    a.push_back(e);
  }

  Difference d(a);

  d.computeDifference();

  cout << d.maximumDifference;

  return 0;
}
