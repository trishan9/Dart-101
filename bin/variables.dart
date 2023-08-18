void main() {
  int num1 = 5;
  double num2 = 2.0;
  bool isAdult;
  print((num1 + num2).runtimeType);

  String name = 'Trishan';
  print('My name is $name');

  int? age;
  age = 17;
  age ??= 20;
  if (age >= 18) {
    isAdult = true;
  } else {
    isAdult = false;
  }

  if (isAdult == true) {
    print('$name is adult.');
  } else {
    print('$name is children.');
  }

  final String message = 'Hello World';
  const String message2 = 'Hello World';
  print(message);
  print(message2);
}
