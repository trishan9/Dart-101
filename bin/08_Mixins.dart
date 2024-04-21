void main() {
  var s = SuperHuman();
  s.benchPress();
  s.sprint();
}

mixin Strong {
  // can't be instantiated, can be used to share behaviors using 'with' keyword.
  bool doesLift = true;

  void benchPress() {
    print("Doing bench press");
  }
}

mixin Fast {
  bool doesRun = true;

  void sprint() {
    print("Running fast");
  }
}

class Human {}

class SuperHuman extends Human with Strong, Fast {}
