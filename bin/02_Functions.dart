void main() {
  print(greet("Trishan", 18));
  print(greetWithNamedParams(age: 18, name: "Wagle"));

  // Anonymous Functions
  callIt(() => "Hello World");
}

// Positional Arguments
greet(String name, int age) {
  // Type Annotations in params are not required, but is recommended for type-safety.
  return "My name is $name and I am $age years old.";
}

// Named / Keyword Arguments: Just-wrap the params with curly braces.
String greetWithNamedParams({required String name, int? age}) =>
    "My name is $name and I am $age years old.";

// First-class functions
void callIt(Function callback) {
  // Callback Functions
  var result = callback();
  print('Result: $result');
}
