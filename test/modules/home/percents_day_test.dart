import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'viewmodel/calculate_viewmodel.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  group("Test Case - Calculate Percent", () {

    final List<double> list  = [1.00, 1.10, 1.05, 1.90];

    test("Read the first day", () async {

      final double value = list.first;

      expect(value, 1.00);
    });

    test("Calculate the first percent",() async {

      int index = 0;

      final double value = list[index];

      final double value2 = list[index +1];

      double result = CalculateViewModel().calculatePercentByOneDay(value, value2);

      expect(result,10);


    });

    test("Calculate all values compared with the next day",() {

      List<double> values = <double>[];

      for(int i = 0; i < list.length ; i++) {
        if(i + 1 < list.length) {
          double value = CalculateViewModel().calculatePercentByOneDay(list[i], list[i+1]);
          values.add(value);
        }
      }

      expect(values.first, 10);
      expect(values[1], -4.55);
      expect(values[2], 80.95);
    });

    test("Calculate all values compared with the  first day",() {

      List<double> values = <double>[];

      for(int i = 0; i < list.length ; i++) {
        if(i + 1 < list.length) {
          double value = CalculateViewModel().calculatePercentByOneDay(list[0], list[i+1]);
          values.add(value);
        }
      }

      expect(values.first, 10);
      expect(values[1], 5);
      expect(values[2], 90);
    });
  });
}