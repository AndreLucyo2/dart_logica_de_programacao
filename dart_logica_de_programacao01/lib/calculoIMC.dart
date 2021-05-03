import 'dart:io';

class CalculoImc {
  static void calculoIMC() {
    print('=== CALCULO DO IMC ===');
    print('--- Informe o Peso:');
    var texPeso = stdin.readLineSync();
    var peso = double.parse(texPeso);

    print('\n--- Informe a altura:');
    var texAltura = stdin.readLineSync();
    var altura = double.parse(texAltura);

    var calcImc = funcCalcImc(peso, altura);

    _imprimirResultado(calcImc);
  }

  static double funcCalcImc(double peso, double altura) {
    return peso / (altura * altura);
  }

  static void _imprimirResultado(calcImc) {
    print('\n======================================');
    if (calcImc < 18.5) {
      print('Baixo do peso.');
    } else if (calcImc > 18.5 && calcImc <= 25) {
      print('Peso Normal.');
    } else if (calcImc > 25 && calcImc <= 30) {
      print('Sobrepeso.');
    } else if (calcImc > 30 && calcImc <= 35) {
      print('Obesidade grau 1.');
    } else if (calcImc > 35 && calcImc < 40) {
      print('Obesidade grau 2.');
    } else {
      print('Obesidade grau 3.');
    }
    print('======================================\n');
  }
}
