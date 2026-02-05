/*
1. A modern programming high-level language
2. Created by Google
3. Used mainly for Flutter apps (mobile, web, desktop)
4. Also used for backend and CLI tools
5. Strong typing + null safety
*/

void main() {
  // void means this function does not return a value
  var name = "faruk";
  int age = 24; // can only hold integer values and cannot be null (null safety)
  int? nullableAge = null; //null safety: this variable can be null
  double height = 5.7;
  bool isStudent = true;
  const pi = 3.14; // constant value that cannot be changed
  print("the type is ${name.runtimeType} and the data is $name");
  print("The type is ${age.runtimeType} the data is $age");
  print("The type is ${nullableAge.runtimeType} the data is $nullableAge");
  print("The type is ${height.runtimeType} the data is $height");
  print("The type is ${isStudent.runtimeType} the data is $isStudent");
  print("The type is ${pi.runtimeType} the data is $pi");
  print("Calling add function and the value is ${add(5, 6)}");
}

/*
1. var → Dart infers the type at compile time
2. int, double, bool, String → explicit types
3. Dart is strongly typed and type-safe
*/
int add(int a, int b) {
  return a + b;
}
