import 'package:string_calcultor/string_calcultor.dart';
import 'package:test/test.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test('returns 0 for an empty string', () {
    expect(calculator.add(""), 0);
  });

  test('returns the number itself when only one number is provided', () {
    expect(calculator.add("1"), 1);
  });
}
