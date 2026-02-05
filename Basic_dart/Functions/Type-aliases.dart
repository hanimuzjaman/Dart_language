/// Typedef makes complex function types readable.
/// Useful for callbacks, streams, or any function reference.

// typedef: Creates a readable alias for a function type
typedef IntOperation = int Function(int, int);

int add(int a, int b) => a + b;
int multiply(int a, int b) => a * b;

void main() {
  IntOperation op = add;
  print('Add 5 + 3 = ${op(5, 3)}'); // 8

  op = multiply;
  print('Multiply 4 * 6 = ${op(4, 6)}'); // 24

  // Using typedef in a list of operations
  List<IntOperation> operations = [add, multiply];
  for (var operation in operations) {
    print('Result: ${operation(10, 2)}');
  }
}
