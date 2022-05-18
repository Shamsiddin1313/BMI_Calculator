import 'dart:math';

class CalcLogic {
  CalcLogic({this.height, this.weight});

  final height;
  final weight;

  double? bmi;

  double? calcBMI() {
    bmi = weight / pow(height / 100, 2);
    return double.parse(bmi!.toStringAsFixed(1));
  }

  String? getResult() {
    if (bmi! >= 25) {
      return "OVERWEIGHT";
    } else if (bmi! > 19.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String? getInterpretion() {
    if (bmi! >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (bmi! > 19.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
