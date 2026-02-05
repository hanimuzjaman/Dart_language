// =========================================================
// CLOSURES IN DART
// =========================================================
// A closure is a function that "remembers" variables from its outer scope.
// It allows the inner function to access and modify variables even after the outer function has finished execution.

/// Function that returns a closure
/// [initial] is an optional starting value for the counter.
/// If [initial] is null, we start from 0.

Function counter(int? initial) {
  // The variable 'count' is defined in the outer scope of the returned function.
  // The returned function "remembers" this variable, making this a closure.
  int count =
      initial ??
      0; // Null-coalescing operator ?? ensures count starts at 0 if initial is null

  // Return an anonymous function (closure) that increments and returns 'count'
  return () {
    count++; // Increment the remembered 'count' variable
    return count; // Return the updated value
  };
}

void main() {
  // Create a closure starting with initial value 5
  var myCounter = counter(
    5,
  ); // 'myCounter' now holds a function that remembers its own 'count'

  print(myCounter()); // 6 → count incremented from 5 to 6
  print(myCounter()); // 7 → count incremented from 6 to 7
  print(myCounter()); // 8 → count incremented from 7 to 8

  // Create another independent closure starting with 10
  var anotherCounter = counter(
    10,
  ); // Independent closure; 'count' here is separate from 'myCounter'
  print(anotherCounter()); // 11 → starts from 10 and increments to 11
}
