import "dart:io";

void main() {
  print("insira seu nome :");
  String? entrada = stdin.readLineSync();

  String? nome = entrada;

  int salario = 0;

  for (int i = 0; i < 3; i++) {
    print("digite o salario do mes ${i + 1}");
    entrada = stdin.readLineSync();

    salario += int.parse(entrada!);

    if (int.parse(entrada) < 0) {
      print("salario invalido insira o correto");
      salario += int.parse(entrada);
      i -= 1;
    }
  }

  double mediaSalarial = salario / 3;

  print("sua media salarial é : $mediaSalarial");

  if (mediaSalarial <= 500) {
    print("seu pobre");
  } else if (mediaSalarial <= 1480 && mediaSalarial > 500) {
    print("jovem aprendiz");
  } else if (mediaSalarial >= 1480) {
    print("efetivado normal");
  } else {
    print("ricooo me da dinheiro");
  }
}
