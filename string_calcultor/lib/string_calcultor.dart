class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0;
    }

    List<String> numbers = _extractNumbers(input);
    List<int> parsedNumbers = _convertToIntegers(numbers);
    checkNegativeNumber(parsedNumbers);

    return _sumOfNumbers(parsedNumbers);
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

  List<int> _convertToIntegers(List<String> numbers) {
    return numbers.map(int.parse).toList();
  }

  void checkNegativeNumber(List<int> numbers) {
    List<int> negativeNumbers = numbers.where((n) => n < 0).toList();

    if (negativeNumbers.isNotEmpty) {
      throw FormatException("negative numbers not allowed: ${negativeNumbers.join(", ")}");
    }
  }

  int _sumOfNumbers(List<int> numbers) {
    return numbers.fold(0, (sum, number) => sum + number);
  }
}

