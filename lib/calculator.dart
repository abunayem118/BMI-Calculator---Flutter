import 'dart:math';

class Calculator {

  Calculator({required this.weight, required this.height});
  final int height;
  final int weight;

  String bmiCalculate (){
    double bmi = weight/pow(height/100, 2);
    String bmical = bmi.toStringAsPrecision(4);
    return bmical;
  }


}