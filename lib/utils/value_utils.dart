

class ValueUtils {

  static String convert2DigitsDouble(double value) => double.parse(value.toStringAsFixed(2)).toString().replaceAll(".", ",");



}