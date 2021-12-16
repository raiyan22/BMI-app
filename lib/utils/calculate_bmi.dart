import 'dart:math';

class BmiLogic {
  BmiLogic({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / (  (height/100)  *  (height/100)  );
    return _bmi.toStringAsFixed(1); // upto one decimal val
  }

  String getResult() {
    if (_bmi >= 25) {
        return 'overweight';
    } else if (_bmi > 18.5) {
        return 'normal';
    } else {
        return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have to exercise regularly🏋️‍♂️';
    } else if (_bmi > 18.5) {
      return 'You\'re doing a great job👌';
    } else {
      return 'Eat more, you skinny 🍉🍌🍓🥚🥘';
    }
  }

}