import 'dart:math';

class BmiBrain{
  BmiBrain({required this.height, required this.weight});
  int height, weight;
  double _bmi = 0.0;

  String calbmi(){
    _bmi = weight / (pow(height/100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You have BMI higher than normal body weight. Try exercise more';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight. Good job !';
    } else {
      return 'You have BMI lower than normal body weight. You can eat a bit more';
    }
  }
}
