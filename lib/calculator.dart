import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final int height;
  final int weight;

  double _cmi;

  String calculateCMI() {
    _cmi = weight/ pow(height/100, 2);
    return _cmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_cmi >= 25){
      return 'Sobrepeso';
    } else if (_cmi > 18.5){
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation(){
    if (_cmi >= 25){
      return 'Sinto muito, você está acima do peso adequado.';
    } else if (_cmi > 18.5){
      return 'Parabéns, você está dentro do peso adequado!';
    } else {
      return 'Sinto muito, você está abaixo do peso adequado.';
    }
  }
}