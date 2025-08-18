import 'dart:io';

void main() {
  print('Digite o valor da compra: ');
  String? preco = stdin.readLineSync();

  try {
    double precofinal = double.parse(preco!);

    if (precofinal <= 0) {
      print('Valor final inválido, tente novamente.');
      return;
    } else {
      print('Valor final é: R\$ $precofinal');
    }
  } on FormatException {
    print('Formato inválido, digite um número.');
    return;
  }

  int escolha = -1;

  do {
    print(
      '\nEscolha uma opção:'
      '\n 1 - Dinheiro'
      '\n 2 - Cartão de débito'
      '\n 3 - Cartão de crédito'
      '\n 4 - Pix'
      '\n 0 - Sair',
    );

    String? entrada = stdin.readLineSync();

    try {
      escolha = int.parse(entrada!);

      if (escolha < 0 || escolha > 4) {
        print('Opção inválida, tente novamente.');
      } else if (escolha != 0) {
        print('Você escolheu a opção: $escolha');
      }
    } on FormatException {
      print('Entrada inválida, digite apenas números.');
    }
  } while (escolha != 0);

  print('Programa encerrado.');
}
