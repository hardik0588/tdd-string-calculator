class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0;
    }

    List<String> numbers = _extractNumbers(input);
    return _sumOfNumbers(numbers);
  }

  List<String> _extractNumbers(String input) {
    String delimiterPattern = r"[,\n]";

    if (input.startsWith("//")) {
      var parts = input.split("\n");
      delimiterPattern = RegExp.escape(parts[0].substring(2));
      input = parts[1];
    }

    return input.split(RegExp(delimiterPattern));
  }

  int _sumOfNumbers(List<String> numbers) {
    return numbers.map(int.parse).reduce((a, b) => a + b);
  }
}
