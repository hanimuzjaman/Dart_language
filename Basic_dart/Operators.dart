void main() {
  // 1. Arithmetic Operators

  int a = 10;
  int b = 3;

  print(a + b); // addition → 13
  print(a - b); // subtraction → 7
  print(a * b); // multiplication → 30
  print(a / b); // division (double) → 3.333...
  print(a ~/ b); // integer division → 3
  print(a % b); // modulus (remainder) → 1

  // 2. Relational Operators

  print(a > b); // true
  print(a < b); // false
  print(a >= b); // true
  print(a <= b); // false
  print(a == b); // false
  print(a != b); // true

  // 3. Logical Operators

  bool x = true;
  bool y = false;

  print(x && y); // AND → false
  print(x || y); // OR → true
  print(!x); // NOT → false

  // 4. Assignment Operators

  int c = 5;
  c += 3; // c = c + 3 → 8
  c -= 2; // c = c - 2 → 6
  c *= 2; // c = c * 2 → 12
  c ~/= 3; // c = c ~/ 3 → 4
  c %= 3; // c = c % 3 → 1
  print(c);

  // 5. Unary Operators

  int d = 5;
  print(++d); // pre-increment → 6
  print(d++); // post-increment → 6 (then becomes 7)
  print(--d); // pre-decrement → 6
  print(d--); // post-decrement → 6 (then becomes 5)

  // 6. Type Test Operators

  var name = "Faruk";
  print(name is String); // true
  print(name is! int); // true

  // 7. Null-aware Operators

  int? age;
  print(age ?? 18); // if age is null → 18

  age ??= 20; // assign only if null
  print(age); // 20

  // 8. Conditional (Ternary) Operator

  int marks = 75;
  String result = marks >= 50 ? "Pass" : "Fail";
  print(result);

  // 9. Cascade Operator

  var buffer = StringBuffer()
    ..write("Hello ")
    ..write("Dart");
  print(buffer.toString());

  // 10. Bitwise Operators

  int m = 5; // 0101
  int n = 3; // 0011

  print(m & n); // AND → 1
  print(m | n); // OR → 7
  print(m ^ n); // XOR → 6
  print(m << 1); // Left shift → 10
  print(m >> 1); // Right shift → 2
}
