// My code
/* 

import 'dart:io'; // Importing the dart:io library to read user input from the console

void main() {

  print('Enter your age:');
  String? input = stdin.readLineSync(); // Read input as a nullable String

  print("Are you a student? (yes/no)");
  String? studentInput = stdin.readLineSync(); // Read input as nullable String

  // Try to convert the age input from String to int
  try {
    int age = int.parse(input!); // Convert String to int

    // Conditional flow based on age
    if (age < 18) {
      print('You are a minor.'); // Age less than 18
    } else if (age >= 18 && age < 65) {
      print('You are an adult.'); // Age between 18 and 64
    } else {
      print('You are a senior.'); // Age 65 or older
    }
  } catch (e) {
    // Handle invalid age input (non-numeric)
    print('Invalid input! Please enter a valid number. $e');
    return; // Exit program on error
  }

  // Try to process student status input
  try {
    String studentStatus = studentInput!; // Get non-null string
    print(
      studentStatus.toLowerCase() == 'yes'
          ? 'Yes, He is a student.' // If input is "yes"
          : 'No, He is not a student.', // If input is not "yes"
    );
  } catch (e) {
    // Handle null input or other errors
    print('Invalid input! Please enter yes or no. $e');
  }
}

*/
// professinal's code

import 'dart:io'; // Importing the dart:io library to read user input from the console

void main() {
  // Get user input safely

  int? age = getAgeInput();
  String? studentStatus = getStudentStatusInput();

  // Exit if any input is invalid
  if (age == null || studentStatus == null) return;

  // Print results based on inputs

  printAgeCategory(age);
  printStudentStatus(studentStatus);
}

// Function to get age input safely

int? getAgeInput() {
  print('Enter your age:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No age input provided!');
    return null;
  }

  try {
    return int.parse(input); // Convert to int
  } catch (e) {
    print('Invalid input! Please enter a valid number.');
    return null;
  }
}

// Function to get student status input safely

String? getStudentStatusInput() {
  print("Are you a student? (yes/no)");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No input for student status!');
    return null;
  }

  return input.toLowerCase(); // Normalize input
}

// Function to print age category

void printAgeCategory(int age) {
  if (age < 18) {
    print('You are a minor.');
  } else if (age < 65) {
    print('You are an adult.');
  } else {
    print('You are a senior.');
  }
}

// Function to print student status

void printStudentStatus(String status) {
  print(
    status == 'yes' ? 'Yes, you are a student.' : 'No, you are not a student.',
  );
}
