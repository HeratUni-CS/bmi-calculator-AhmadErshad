import 'dart:math';

class BMIBrain{
  int height;
  int weight;
  late double  bmi;

  BMIBrain({required this.height, required this.weight}) {
    // bmi = weight / ((height / 100) * (height / 100));
    bmi = weight / pow(height/ 100, 2);
  }

  String getResult() {
    if(bmi < 18.5) {
      return 'UNDERWEIGHT';  
    } else if(bmi < 24.9 && bmi > 18.5) {
        return 'NORMAL';
    } else if(bmi < 29.9 && bmi > 24.9){
      return 'OVERWEIGHT';
    } else {
      return 'OBESE';
    }
  }

  String getBMI() {
    return bmi.toStringAsFixed(2);
  }

  String getInterpretation() {
    if(bmi < 18.5) {
      return 'You are dying, eat something';  
    } else if(bmi < 24.9 && bmi > 18.5) {
        return 'You are good to go';
    } else if(bmi < 29.9 && bmi > 24.9){
      return 'You are too fat, Exercise';
    } else {
      return 'You are exploading';
    }   
  }
}