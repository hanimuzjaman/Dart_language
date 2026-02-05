void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Date'];
  List<int> numbers = [1, 2, 3, 4, 5];

  // Using different types of loops
  print('--- For loop ---');
  forLoopExample(numbers);

  print('\n--- For-in loop ---');
  forInLoopExample(fruits);

  print('\n--- While loop ---');
  whileLoopExample(numbers);

  print('\n--- Do-while loop ---');
  doWhileLoopExample(numbers);

  print('\n--- forEach loop ---');
  forEachLoopExample(fruits);
}

// FOR LOOP

void forLoopExample(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    print('Number $i: ${numbers[i]}');
  }
}

// FOR-IN LOOP

void forInLoopExample(List<String> fruits) {
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }
}

// WHILE LOOP

void whileLoopExample(List<int> numbers) {
  int i = 0;
  while (i < numbers.length) {
    print('While number: ${numbers[i]}');
    i++;
  }
}

// DO-WHILE LOOP

void doWhileLoopExample(List<int> numbers) {
  int j = 0;
  do {
    print('Do-while number: ${numbers[j]}');
    j++;
  } while (j < numbers.length);
}

// FOREACH LOOP

void forEachLoopExample(List<String> fruits) {
  // Using asMap() to get index
  fruits.asMap().forEach((index, fruit) {
    print('forEach fruit #$index: $fruit');
  });
}
