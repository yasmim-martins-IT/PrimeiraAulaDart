import "dart:io";

void main() {
  // exercicio1
  print("me de o valor do produto");
  String? profuto = stdin.readLineSync();
  double correctProduto = double.parse(profuto!);

  print("me de o valor do desconto");
  String? desconto = stdin.readLineSync();
  double correctdesconto = double.parse(desconto!);

  print(calcularDesconto(correctProduto, correctdesconto));

  // exercicio2
  print("digite sua idade: ");

  String? anosDeVida = stdin.readLineSync();
  int idade = int.parse(anosDeVida!);

  bool result = maiorDeIdade(idade);

  if (result) {
    print("você é maior de idade");
  } else {
    print("você é menor de idade");
  }

  // exercicio3
  print("me a temepratura");
  String? celcius = stdin.readLineSync();
  double temp = double.parse(celcius!);

  print('o valor em farenheit é: ${celsiusParaFahrenheit(temp)}');
}

bool maiorDeIdade(int idade) {
  if (idade >= 18) {
    return true;
  } else {
    return false;
  }
}

double calcularDesconto(double preco, double desconto) {
  double valorFinal = preco - (preco * desconto / 100);

  return valorFinal;
}

double celsiusParaFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

