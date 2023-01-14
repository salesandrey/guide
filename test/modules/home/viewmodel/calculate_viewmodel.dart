class CalculateViewModel {


  double calculatePercentByOneDay(double value, double value2) {
    return convertValue2Digits((value2 - value) / value * 100);
  }

    double convertValue2Digits(double value) => double.parse(value.toStringAsFixed(2));

}