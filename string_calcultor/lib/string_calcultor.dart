class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0;
    }
    return _sumOfNumbers(input.split(","));
  }

  int _sumOfNumbers(List<String> numbers) {
    return numbers.map(int.parse).reduce((a, b) => a + b);
  }
}