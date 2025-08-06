import 'dart:io';

void main() {
  int number = 0;

  do {
    print('Hello world');
  } while (number > 1);

  while (number < 5) {
    print(number);

    number++;
  }

  print('Digite sua senha: ');
  String? senha = stdin.readLineSync();

  while (senha != "123") {
    print("Senha incorreta ");
    senha = stdin.readLineSync();
  }

  print("socorro");
}
