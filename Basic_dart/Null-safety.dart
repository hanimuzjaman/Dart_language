class User {
  String name;
  User(this.name);
}

void main() {
  // 1️⃣ Nullable vs Non-Nullable Types

  int? age = null;
  // age = null; // ❌ Compile-time error (non-nullable)

  int? score = null; // ✅ Nullable
  print(score);

  // 2️⃣ Null Check Before Use

  int? value = 10;

  if (value != null) {
    print(value + 5); // Safe usage
  }

  // 3️⃣ Null-Aware Operator (??) — Default Value

  String? username;
  print('Hello ${username ?? 'Guest'}');

  // 4️⃣ Null-Aware Assignment (??=)

  int? points;
  points ??= 100; // Assign only if null
  print(points);

  // 5️⃣ Null-Aware Access (?.)

  User? user;
  print(user?.name); // Safe access (no crash)

  // 6️⃣ Null Assertion Operator (!) — Use Carefully

  int? number = 5;
  print(number! + 10); // ❗ Assumes value is NOT null

  // 7️⃣ late Keyword — Initialize Later (Non-Nullable)

  late String token;
  token = 'abc123';
  print(token);

  // ---------------------------------------------------
  // 8️⃣ Nullable Function Parameters
  // ---------------------------------------------------

  void printLength(String? text) {
    if (text == null) {
      print('No text provided');
      return;
    }
    print(text.length);
  }

  printLength('Hello');
  printLength(null);

  // ---------------------------------------------------
  // 9️⃣ Named Parameters with Default Values (BEST PRACTICE)
  // ---------------------------------------------------

  void greet({String name = 'Guest', int age = 0}) {
    print('Hello $name, Age: $age');
  }

  greet();
  greet(name: 'Alice', age: 25);

  // ---------------------------------------------------
  // 🔟 Null Safety Cheat Summary (Conceptual)
  // ---------------------------------------------------

  /*
    Type      Meaning
    -------------------------
    int       Never null
    int?      Nullable
    ??        Default if null
    ??=       Assign if null
    ?.        Safe access
    !         Force unwrap (danger)
    late      Initialize later
  */
}
