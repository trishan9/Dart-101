void main() {
  var myArr = ["Trishan", "Wagle", 18, 999.99, true];
  List<int> scores = [1, 2, 3, 4, 5];

  print(myArr.length);
  print(myArr.first);
  print(myArr.last);
  print(myArr.indexOf("Trishan")); // -1 if not found
  myArr.shuffle();
  print(myArr);
  print(scores.sublist(1, 3));

  scores.add(100); // adds to the last
  scores.add(200);
  scores.remove(200); // removes first instance of the specified element
  scores.removeLast(); // removes the last element (pop)
  scores.removeAt(0); // removes the element at the specified index
  scores.removeWhere((element) =>
      element % 2 == 0); // removes elements that satisfy the condition

  scores.forEach((element) => print(element));

  List<String> names = ["Trishan", "Wagle", "Trishan Wagle"];
  var upperNames = names.map((e) {
    return e.toUpperCase();
  });

  // Spread Syntax
  var combined = [...names, ...upperNames];
  print(combined);

  scores.where((element) => element.isOdd).forEach((element) => print(element));

  int totalScore = scores.reduce((value, element) => value + element);
  print(totalScore);

  // Conditions in Lists
  bool depressed = false;
  var cart = ['milk', 'eggs', if (depressed) 'Vodka'];
  print(cart);
}
