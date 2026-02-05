// Higher-order function: A function that takes another function as a parameter
void repeatAction(int times, void Function(int) action) {
  for (int i = 0; i < times; i++) {
    action(i); // Calls the function passed as parameter
  }
}

void main() {
  // Pass an anonymous function as a parameter
  repeatAction(5, (i) => print('Iteration $i'));

  // Pass a named function as a parameter
  void greetIteration(int i) => print('Hello number $i');
  repeatAction(3, greetIteration);
}
