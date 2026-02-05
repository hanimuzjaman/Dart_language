// Returning function: A function that returns another function
Function multiplier(int n) {
  return (int x) => x * n; // Returns an anonymous function
}

void main() {
  var triple = multiplier(3); // Returns a function that multiplies by 3
  print('Triple 5 = ${triple(5)}'); // 15

  var doubleIt = multiplier(2); // Returns a function that multiplies by 2
  print('Double 7 = ${doubleIt(7)}'); // 14
}
