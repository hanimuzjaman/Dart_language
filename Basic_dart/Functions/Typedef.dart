typedef Validator = String? Function(String value);

String? emailValidator(String value) {
  return value.contains('@') ? null : "Invalid email";
}

String? passwordValidator(String value) {
  return value.length >= 6 ? null : "Password too short";
}

void validateField(String value, Validator validator) {
  final error = validator(value);
  print(error ?? "Valid input");
}

void main() {
  validateField("test@mail.com", emailValidator);
  validateField("123", passwordValidator);
}
