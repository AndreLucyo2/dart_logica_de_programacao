import 'dart:io';
import 'package:dart_logica_de_programacao01/calculoIMC.dart';

void main(List<String> arguments) {
  var continuar = true;

  do {
    print('\n-- ESTUDO DE ALGORITOMO --');
    print('--- 1 para validar idade.');
    print('--- 2 para calculo do IMC.');
    print('--- 3 para sair.');
    var opc = int.parse(stdin.readLineSync());

    switch (opc) {
      case 1:
        validaIdade();
        break;
      case 2:
        CalculoImc.calculoIMC();
        break;
      case 3:
        print('Saindo...');
        continuar = false;
        break;
      default:
        print('Opção inválida.');
    }
  } while (continuar);
}

void validaIdade() {
  //pergunta a idade
  //valida se maior que 18 é de maior
  //se nao, é de menor
  print('-- ESTUDO DE ALGORITOMO --');
  print('---Informe a idade:');
  var idade = int.parse(stdin.readLineSync());

  if (idade >= 50) {
    print('Melhor idade.');
  } else if (idade >= 18) {
    print('Adulto.');
  } else if (idade >= 12) {
    print('Adolescente.');
  } else {
    print('Criança.');
  }
}
