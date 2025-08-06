import "dart:io";

void main() {
  print("digite a velocidade que você estava");

  String? entrada = stdin.readLineSync();

  int velocidade = int.parse(entrada!);

  if (velocidade <= 60) {
    print("sem infração");
  } else if (velocidade > 60 && velocidade <= 80) {
    print("infração leve");
  } else if (velocidade > 80 && velocidade <= 100) {
    print("infração média");
  } else if (velocidade > 100) {
    print("infração grave");
  } else {
    print("velocidade invalida");
  }

  print(
    "escolha uma forma de pagar a multa de 1000 reais : \n1-pagar a vista 10% de desconto \n2-parelar em duas vezes \n3-parcelar em 3 vezes com 10% de juros",
  );
  String? choice = stdin.readLineSync();
  int escolha = int.parse(choice!);

  switch (escolha) {
    case 1:
      double valor_desconto = 1000 / 100 * 10;
      double valor_total = 1000 - valor_desconto;

      print("você pagara no total : $valor_total");

      break;
    case 2:
      double valor_parcela = 1000 / 2;

      print("você pagara parcelas de $valor_parcela");
      break;
    case 3:
      double valor_desconto = 1000 / 100 * 10;
      double valor_parcela = 1000 / 3 + valor_desconto;

      print("você pagara parcelas de $valor_parcela");
      break;
    default:
      print("escolha invalida");
      break;
  }
}
