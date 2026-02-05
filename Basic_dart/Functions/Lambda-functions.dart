// Anonymous function: Function without a name
// Lambda (arrow function): Short form for single-expression functions

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // Anonymous function
  var squared = numbers.map((n) {
    return n * n;
  }).toList();
  print('Squared: $squared');

  // Lambda (arrow) function
  var doubled = numbers.map((n) => n * 2).toList();
  print('Doubled: $doubled');

  // forEach with anonymous function
  numbers.forEach((n) => print('Number: $n'));
}
