import 'dart:io';

void main() {
  print("digite seu nome completo:");
  String? nomeCompleto = stdin.readLineSync();

  if (nomeCompleto == null || nomeCompleto.trim().isEmpty) {
    print("o nome não pode ser vazio ou nulo");
  } else {
    print("Olá $nomeCompleto");
  }
}
