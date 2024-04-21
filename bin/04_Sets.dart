void main() {
  var mySet = {"1", 2, true};
  Set<String> names = {"Trishan", "Wagle", "Trishan Wagle"};

  print(mySet);
  print(names);

  names.add("Wagle Dai");
  names.remove("Wagle");
  print(names);
  print(names.length);
}
