/// Named parameters improve readability.
/// Optional parameters allow flexible function calls.
/// Default values remove the need for null checks.

// Named optional parameters with default values
void greet({String name = 'Guest', int age = 0}) {
  print('Hello $name, Age: $age');
}

// Positional optional parameter
void greetPositional([String? name]) {
  print('Hello ${name ?? 'Guest'}');
}

void main() {
  greet(name: 'Alice', age: 25); // Both provided
  greet(age: 30); // Name uses default
  greet(); // Both defaults

  greetPositional('Bob'); // Positional optional parameter
  greetPositional(); // Uses default
}
