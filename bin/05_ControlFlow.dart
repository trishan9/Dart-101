void main() {
  String color = 'blue';

  if (color == 'blue') {
    print("Blue");
  } else if (color == 'green') {
    print("Green");
  } else {
    print("Something else");
  }

  // One liner
  if (color == 'red') print('hello red!');

  // For Loop
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }
    print("The value of i is $i");
  }

  // For In Loop
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers.where((n) => n > 1)) {
    print(number.isEven ? "Even" : "Odd");
  }

  // While Loop
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  // Do-While Loop
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);

  // Assertions
  var txt = "bad";
  assert(txt == "good", "Bad text"); // raises error in debug mode only
}
