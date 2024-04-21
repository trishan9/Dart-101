void main() {
  var name = "Trishan"; // Infers the type as string
  name = "Wagle";

  final age = 17; // Runtime constant
  const isMarried = false; // Compile-time Constant (improves performance)

  // Type Annotations
  final int birthYear = 2024;
  const bool isPro = true;
  double money = 999.99;
  String gender = "Male";
  String? nullString; // means that this variable can be nullable
  // String nonNullString = nullString!;
  String? myName;
  myName ??= "Dai"; // assign value if null, otherwise use current value

  print(name);
  print(age);
  print(isMarried);
  print(birthYear);
  print(isPro);
  print(money);
  print(gender);
  print(nullString);

  // "is" is the instance-of operator
  print((money + birthYear) is int);
  // print runtimetype of an object
  print((money + birthYear).runtimeType);

  // String Interpolation:
  print("My name is " + name);
  print("My name is $name and I am $age years old.");
  // For object variables: ${obj.name}

  late String lateVariable;
  lateVariable = "Trishan";
  print(lateVariable);
}
