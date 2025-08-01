import "dart:io";

int notas = 5;
void main() {
  int media = 0;

  for (int i = 0; i < 5; i++) {
    print("digite uma nota");
    String? entrada = stdin.readLineSync();
    int nota = int.parse(entrada!);
    media += nota;
  }

  double resultado = media / notas;

  print("A sua média é : $resultado");

  if (media < 4) {
    print("Aluno reprovado");
  } else {
    print("aluno aprovado");
  }
}
