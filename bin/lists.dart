void main() {
  List<dynamic> array = [1, 2, 3, 4, "trishan"];
  Map<String, dynamic> books = {'title': 'Hello', 'author': 'Trishan'};

  array.forEach((n) => print(n));
  books.forEach((v, k) => print('$v $k'));
}
