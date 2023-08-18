void main() {
  positionalParams(int a, int b) {
    return a + b;
  }

  namedParams({required int a, int b = 10}) {
    return a + b;
  }

  namedParamsArrow({required int a, int b = 10}) => a + b;

  print(positionalParams(12, 12));
  print(namedParams(b: 14, a: 12));
  print(namedParamsArrow(b: 14, a: 12));
}
