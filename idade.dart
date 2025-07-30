import 'dart:io';

void main() {
  /*
    Para conseguir receber os dados em int precisa fazer de outro jeito
   */
  // cria a variavel que recebe o valor
  String? entrada = stdin.readLineSync();

  //cria a variavel que converte a idade em numero o "!" serve para que consiga converter pois diz que tem valor
  int idade = int.parse(entrada!); 
}
