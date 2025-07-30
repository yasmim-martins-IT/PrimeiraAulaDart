import 'dart:io'; //importando as funções da linguagem dart

/* comentario em mais de uma linha    */

/* tipo de variaveis :
  int 
  double - decimal
  String
  bool

  --- outras variaveis ---
  dynamic - recebe qualquer tipo de dados (inclusiva hexadecimal/cor #fffff)
*/

//criando a void main para rodar a aplicação obrigatório em TODO arquivo
void main() {
  //criando programa para o usuario colocar o nome

  //todo input precisa de um print antes
  print("Digite seu nome");

  //criando a variavel para receber o input todas as variaveis tem que ser tipadas
  //stdin.readLineSync() lê a linha e armazena (é o input do dart) o ? ao lado do string é para não deixar o nome
  String? nome = stdin.readLineSync();

  //o cifrão busca o valor da variavel para printala
  print("Parabéns campeão você é demais seu nome é $nome");

  if (nome == "junin") {
    print("você é o cara , parabéns campeão");
  } else {
    print("você não é o campeão"); 
  }
}
