import 'dart:html';
import 'dart:io';

void main(List<String> arguments) {
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
