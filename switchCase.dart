import 'dart:io';

// o swtcase é bom para entrada de valores fixos sem intervalo de valores
// logica simples
// poucas opções

void main() {
  print("Insira a sua nota");
  String? entrada = stdin.readLineSync();
  int nota = int.parse(entrada!);

  // criando o meu switch case , dentro do parenteses coloca a variavel que está observando o valor
  switch (nota) {
    // criando os casos
    case 1:
      print("sua nota está baixa");
      break; // acaba o programa
    case 2:
      print("Sua nota é 2");
      break;
    case 3:
      print("Sua nota é 3");
      break;
    case 4:
      print("Sua nota é 4");
      break;
    case 5:
      print("Sua nota é 5");
      break;
    case 6:
      print("Sua nota é 6");
      break;
    case 7:
      print("Sua nota é 7");
      break;
    case 8:
      print("Sua nota é 8");
      break;
    case 9:
      print("Sua nota é 9");
      break;
    case 10:
      print("Sua nota é 10");
      break;
    default:
      print("valor invalido");
  }
}
