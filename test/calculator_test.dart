import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_calculator/calculator.dart';

void main(){
  group('Calculator', (){
    final calculator = Calculator();

    test('Adds two number correctly',() {
      expect(calculator.add(2, 3 ), 5);
    },);

    test('Subtract two number correctly',(){
      expect(calculator.subtract(5, 3), 2);
    });

    test('multiplies two numbers correctly', () {
      expect(calculator.multiply(4, 3), 12);
    });

    test('divides two numbers correctly', () {
      expect(calculator.divide(6, 2), 3.0);
    });

    test('throws an error when dividing by zero', () {
      expect(() => calculator.divide(6, 0), throwsArgumentError);
    });

  });
}