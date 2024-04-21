void main() async {
  // like Promises in JS
  // states: uncompleted, completed

  fakeFetch().then((p) {
    print(p);
  }).catchError((e) => print(e));

  // async await
  try {
    final data = await fakeFetch();
    print(data);
  } catch (err) {
    print(err);
  } finally {
    print('finally');
  }
}

Future<String> fakeFetch() {
  const delay = Duration(seconds: 5);
  return Future.delayed(delay, () {
    return "Data fetched!"; // Like setTimeout in JS
  });
}
