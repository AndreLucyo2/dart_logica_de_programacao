import 'dart:io';

class CarrinhoCompras {
  //lista:
  static var produtos = <String>[];
  static var condicao = true;

  static void carrinho() {
    while (condicao) {
      //Limpa a tela do console:
      print('\x1B[2J\x1B[0;0H');
      print('=== ESCOLHA UMA OPÇÃO ===');
      print('--- 1 para adicionar produto.');
      print('--- 2 para Remover.');
      print('--- 3 para imprmir.');
      print('--- 4 para sair.');
      var opc = int.parse(stdin.readLineSync());

      switch (opc) {
        case 1:
          print('=== ADICIONE OS PRODUTOS ===');
          print('--- 4 para sair.');
          do {
            add();
          } while (condicao);
          condicao = true;
          break;

        case 2:
          imprimir();
          remove();
          stdin.readLineSync();
          break;

        case 3:
          imprimir();
          stdin.readLineSync();
          break;

        case 4:
          print('Programa fnalizado...');
          condicao = false;
          break;

        default:
          print('Opção inválida!');
      }
    }
  }
}

void imprimir() {
  print('\n======================================');
  print('--- LISTA DE PRODUTO --- ');
  for (var i = 0; i < CarrinhoCompras.produtos.length; i++) {
    print('Item ${i + 1} - ${CarrinhoCompras.produtos[i]}');
  }
  print('======================================');
}

void remove() {
  print('--- REMOVER O PRODUTO ---');
  print('Informe o item para remover:');
  var item = stdin.readLineSync();
  CarrinhoCompras.produtos.removeAt(int.parse(item) - 1);
  print('Item ${item} removido com sucesso!');
}

void add() {
  print('Informe o nome do produto ${CarrinhoCompras.produtos.length + 1}:');
  var input = stdin.readLineSync();
  if (input != '4') {
    CarrinhoCompras.produtos.add(input);
  } else {
    print('Carrinho finalizado.');
    CarrinhoCompras.condicao = false;
  }
}
