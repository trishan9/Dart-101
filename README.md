# Dart-101

- used to make multi-platform applications
- statically typed language
- Java + JS = Dart

## Create a new dart project.

Learn about the available commands and how to use them.

```bash
dart --help
```

Create a new project.

```bash
dart create -t console-simple my_app

# OR use the current directory (if it's empty)

dart create -t console-simple . --force
```

Run the application

```bash
dart run
```

## Compile dart code

Compile dart code to executable

```bash
dart compile exe bin/dart.dart
bin/dart.exe
```

Compile your code to JavaScript and run it with Node.js.

```bash
dart compile js bin/dart.dart
node out.js
```

## Other Info

We add packages from pub.dev to `pubspec.yaml` file

Source code is available inside `bin` directory

## Basic data types

Declare a variable by putting the data type in front of the variable name.

```dart
int num1 = 2;
double num2 = 3.0;
bool isTrue = true;
String str = 'Hello';
```

## Runtime Type Checking

You can check the runtime type of a variable using the `is` keyword, or via its `runtimeType` property.

```dart
(num1 + num2) is int
(num1 + num2).runtimeType
```

## Var Keyword

The `var` keyword is like saying I don’t care to annotate the variable with a type. If you don’t specify a value, it will be automatically inferred as `dynamic` (try to avoid this).

```dart
var username; // dynamic
var username = 'trishan'; // String
```

## Final vs Const

The `final` keyword is used to declare a variable that cannot be reassigned. It’s a good practice to use final whenever possible.

```dart
final String fullname = 'Trishan';
fullname = 'Trishan' // error;
```

The `const` keys is almost identical to `final`, but it creates an immutable compile-time constant. It may improve app performance, but can only be used for values known at compile time.

```dart
const int age = 75;
const int favNumber = num1 + 5; // error
```

## Null Safety

Null safety is a feature added to Dart 2.0. It means variables can no longer be assigned `null` by default. This reduces the risk of runtime bugs and general makes our code more concise because “null checking” is no longer necessary.

### Non-Nullable by Default

Variables cannot be `null` by default. Attempting to assign a null value will result in a compile-time error.

```dart
int age = 75; // non-nullable
int age = null; // error
```

### Allow null

In some cases, it is useful to allow a variable to be null, which is achieved by adding question mark to the end of the variable’s type.

```dart
int? age; // nullable
```

### Assertion Operator

Another possible situation is that you want to assign a nullable value TO a non-nullable variable. Dart will not allow this by default, but you can use the assertion operator `!` to force the compiler to think the value it is non-null.

```dart
String? answer;

String result = answer; // error

String result = answer!; // works
```

## Late Variable Initialization

In many cases, we can’t set the value of a variable during initialization, BUT we know that it WILL be assigned at runtime. This is known as late variable initialization and can be achieved by adding an `late` keyword to the variable’s declaration. This is also known as a “lazy” variable and should only be used when absolutely necessary.

```dart
class Animal {
  late final String _size;

  void goBig() {
    _size = 'big';
    print(_size);
  }
}
```

## Conditional Statements

```dart
String color = 'blue';

if (color == 'blue') {
//
} else if (color == 'green') {
//
} else {
// default
}

// One liner
if (color == 'red') print('hello red!');
```

## Loops

```dart
// For Loop
for (var i = 0; i < 5; i++) {
    print(i);
    // break;
    // continue;
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
} while (i < 5);
```

## Assertions

```dart
// Assert
var txt = 'good';
assert(txt != 'bad');
```

## Assignment

Use the assignment operator to assign a value to a variable, ONLY if it’s not already assigned.

```dart
String? name;
name ??= 'Guest';
var z = name ?? 'Guest';
```

## Cascade

Use the cascade operator to call methods on an object without having to create a new line of code. It can often eliminate the need to create a temporary variable, which is especially useful in with working in Flutter’s widget tree.

```dart
// var paint = Paint();
// paint.color = 'black';
// paint.strokeCap = 'round';
// paint.strokeWidth = 5.0;

var paint = Paint()
    ..color = 'black'
    ..strokeCap = 'round'
    ..strokeWidth = 5.0;q
```

## Typecast

In rare cases, you may need to cast a value to a different type.

```dart
var number = 23 as String;
number is String; // true
```

## Basic Functions

Function with positional parameters:

```dart
// Basic Function
String takeFive(int number) {
return '$number minus five equals ${number - 5}';
}
```

Function with named parameters:

```dart
// Named parameters
namedParams({required int a, int b = 5}) {
return a - b;
}

namedParams(a: 23, b: 10);
```

## Arrow Functions

Arrow functions are useful when passing functions as parameters to other functions.

```dart
// Arrow Function
String takeFive(int number) => '$number minus five equals ${number - 5}';
```

## Callback Functions

Many APIs in Dart use callback functions, often to handle events or gestures in Flutter.

```dart
// First-class functions
callIt(Function callback) {
    var result = callback();

    return 'Result: $result';
}
```

## Anonymous Functions

```dart
callIt(() => "Hello World");
```

## Basic Maps

```dart
  Map<String, dynamic> book = {
    'title': 'Moby Dick',
    'author': 'Herman Melville',
    'pages': 752,
  };

  book['title'];
  book['published'] = 1851;
```

## Loop over a Map

```dart
  book.keys;
  book.values;
  book.values.toList();

  for (MapEntry b in book.entries) {
    print('Key ${b.key}, Value ${b.value}');
  }

  book.forEach((k, v) => print("Key : $k, Value : $v"));
```

## Create a Class

Classes are a way to group data and behavior together, like a blueprint for an Object.

```dart
class Basic {
  int id;

  Basic(this.id);

  doStuff() {
    print('Hello my ID is $id');
  }
}
```

## Create an Object

Use the class to instantiate an Object. The new keyword is optional.

```dart
Basic thing = new Basic(55);
thing.id;
thing.doStuff();
```

## Static Methods

You can call static methods on the class itself without creating a new object.

```dart
class Basic {

  static globalData = 'global';
  static helper() {
      print('helper');
  }
}

Basic.globalData;
Basic.helper();
```

## Constructor Basics

The this keyword is used to refer to the current instance of a class and is optional unless there is a name collision.

```dart
class Rectangle {
  final int width;
  final int height;
  String? name;
  late final int area;

  Rectangle(this.width, this.height, [this.name]) {
    area = width * height;
  }
}
```

## Named Parameters

In Flutter, all widgets used named parameters.

```dart
class Circle {
  const Circle({required int radius, String? name});
}

const cir = Circle(radius: 50, name: 'foo');
```

## Named Constructors

It is also possible for a class to have multiple named constructors. This is useful when different datatypes can be used to initialize the same class.

```dart
class Point {
  double lat = 0;
  double lng = 0;

  // Named constructor
  Point.fromMap(Map data) {
    lat = data['lat'];
    lng = data['lng'];
  }

  Point.fromList(List data) {
    lat = data[0];
    lng = data[1];
  }
}

var p1 = Point.fromMap({'lat': 23, 'lng': 50});
var p2 = Point.fromList([23, 50]);
```

## Interfaces

An interface is a contract that a class must follow. Prefixing a method or variable with _ makes it private, so it won’t be visible when imported from a different file.

```dart
class Elephant {
  // Public interface
  final String name;

  // In the interface, but visible only in this library. (private)
  final int _id = 23;

  // Not in the interface, since this is a constructor.
  Elephant(this.name);

  // Public method.
  sayHi() => 'My name is $name.';

  // Private method.
  _saySecret() => 'My ID is $_id.';
}
```

## Superclass

The superclass or parent class contains the behaviors that is shared by all subclasses. The abstract keyword is used to indicate that the class is not meant to be instantiated, but rather to be inherited from.

```dart
abstract class Dog {
  void walk() {
    print('walking...');
  }
}
```

## Subclass

The subclass can @override the behavior of the superclass.

```dart
class Pug extends Dog {
  String breed = 'pug';

  @override
  void walk() {
    super.walk();
    print('I am tired. Stopping now.');
  }
}
```

## What are mixins?

A mixin is just like a class, it can have methods and properties, but it can’t be instantiated.

```dart
mixin Strong {
  bool doesLift = true;

  void benchPress() {
    print('doing bench press...');
  }
}

mixin Fast {
  bool doesRun = true;

  void sprint() {
    print('running fast...');
  }
}
```

## What are mixins used for?

Mixins are used to extend specific behaviors to classes with the with keyword. Certain Flutter libaries use mixins to extend shared behaviors to classes.

```dart
class Human {}

class SuperHuman extends Human with Strong, Fast {}
```

## What are Generics?

Generics are a way to parameterize types. They allow a class to wrap a type, and then use that type in multiple places. For example, we can have a Box class that wraps an double or String type.

```dart
Box<String> box1 = Box('cool');
Box<double> box2 = Box(2.23);
```

## Using Generics in a Class

A generic type is a type that can be used as a substitute for a type parameter.

```dart
class Box<T> {
  T value;

  Box(this.value);

  T openBox() {
    return value;
  }
}
```

## Namespace packages

The easiest way to deal with name conflicts is to use a namespace package.

```dart
import 'somewhere.dart' as External;
```

## Exclude code from a package

Exclude code from a package with the hide keyword.

```dart
import 'somewhere.dart' hide Circle;
```

## Isolate code from a package

Import individual classes from a package with the show keyword.

```dart
import 'somewhere.dart' show Rectangle;
```

# Asynchronous Programming

## Create a Future

Many APIs in Dart/Flutter return Futures. To simulate an async event, we can create a future that will resolve after a 5 second delay.

```dart
var delay = Future.delayed(Duration(seconds: 5), cb);
```

## Handle a Future

A future can either be a success or a error. Use then then to handle a successful resolution and catchError to handle an error.

```dart
  delay
      .then((value) => print('I have been waiting'))
      .catchError((err) => print(err));
```

## Async Await Syntax

Async-await provides a cleaner (arguably) syntax for writing asynchronous code. The async keyword tells Dart to return a Future, while await pauses the execution of the function until the Future resolves.

```dart
Future<String> runInTheFuture() async {
  var data = await Future.value('world');

  return 'hello $data';
}
```
